import React, { useState, useEffect } from 'react';
import { View, Text, TextInput, Button, StyleSheet, TouchableOpacity, Alert, ActivityIndicator } from 'react-native';
import DateTimePicker from '@react-native-community/datetimepicker';
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { NavigationProp } from '@react-navigation/native';

const Booking = ({ navigation }: { navigation: NavigationProp<any> }) => {
    const [activity, setActivity] = useState('');
    const [time, setTime] = useState(new Date());
    const [date, setDate] = useState(new Date());
    const [status, setStatus] = useState('Low'); // Default status is 'Low'
    const [loading, setLoading ] =useState(false);
    const [userId, setUserId] = useState<string | null>(null);
    const [errors, setErrors] = useState<{ activity?: string[]; time?: string[]; date?: string[]; status?: string[] }>({});
    const [showTimePicker, setShowTimePicker] = useState(false);
    const [showDatePicker, setShowDatePicker] = useState(false);
    const API_URL = "http://localhost:8000/api"; // Ensure this is your correct backend URL

    // Function to get user ID from AsyncStorage
    const getUserId = async () => {
        try {
            const user = await AsyncStorage.getItem('user');
            console.log(user);
            if (user) {
                const parsedUser = JSON.parse(user);
                setUserId(parsedUser.id); // Store user ID in state
            }
            else {
                console.log('No user data found in AsyncStorage');
            }
        } catch (error) {
            console.error('Error fetching user ID:', error);
        }
    };

    // Fetch user ID when the component mounts
    useEffect(() => {
        getUserId();
    }, []);

    const handleBooking = async () => {
        setLoading(true);
        if (!userId) {
            console.error('User not logged in. Cannot make a booking.');
            navigation.navigate('login', { errorMessage: 'Login to make a booking' });
            return;
        }

        try {
            const token = await AsyncStorage.getItem('authToken');
            console.log('stored Token:', token);
            if (!token) {
                console.error('No token found');
            }
            const response = await axios.post(
                `${API_URL}/booking`,
                {
                    user_id: userId,
                    activity,
                    date: date.toISOString().split('T')[0], // YYYY-MM-DD format
                    time: time.toISOString().split('T')[1].slice(0, 5), // HH:MM format
                    status, // Send the selected status
                },
                {
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                        'Authorization': `Bearer ${await AsyncStorage.getItem('authToken')}`, // If using authentication
                    },
                }
            );

            // Reset form fields
            setActivity('');
            setTime(new Date());
            setDate(new Date());
            setStatus('Low'); // Reset status to default
            setErrors({});

            console.log('Success:', response.data);

            navigation.reset({
                index: 0,
                routes: [{ name: "Home", params: { successMessage: "Booking successful!" } }],
            });
        } catch (error) {
            if (axios.isAxiosError(error) && error.response) {
                console.error('Error:', error.response.data);
                setErrors(error.response.data.errors || {});
            } else {
                console.error('Something went wrong', error);
            }
        }finally{
            setLoading(false);
        }
    };

    return (
        <View style={styles.container}>
            <Text style={styles.title}>Add to Activities</Text>

            {/* Activity Input */}
            <TextInput
                style={styles.input}
                placeholder="Activity"
                placeholderTextColor="#ccc"
                value={activity}
                onChangeText={setActivity}
            />
            {errors.activity && <Text style={styles.error}>{errors.activity[0]}</Text>}

            {/* Date Picker */}
            <TouchableOpacity onPress={() => setShowDatePicker(true)} style={styles.datePicker}>
                <Text style={styles.dateText}>Date: {date.toDateString()}</Text>
            </TouchableOpacity>
            {showDatePicker && (
                <DateTimePicker
                    value={date}
                    mode="date"
                    display="default"
                    onChange={(event, selectedDate) => {
                        setShowDatePicker(false);
                        if (selectedDate) {
                            setDate(selectedDate);
                        }
                    }}
                />
            )}
            {errors.date && <Text style={styles.error}>{errors.date[0]}</Text>}

            {/* Time Picker */}
            <TouchableOpacity onPress={() => setShowTimePicker(true)} style={styles.datePicker}>
                <Text style={styles.dateText}>Time: {time.toLocaleTimeString()}</Text>
            </TouchableOpacity>
            {showTimePicker && (
                <DateTimePicker
                    value={time}
                    mode="time"
                    display="default"
                    onChange={(event, selectedTime) => {
                        setShowTimePicker(false);
                        if (selectedTime) {
                            setTime(selectedTime);
                        }
                    }}
                />
            )}
            {errors.time && <Text style={styles.error}>{errors.time[0]}</Text>}

            {/* Priority Level (Status) - Radio buttons */}
            <Text style={styles.label}>Priority Level:</Text>
            <View style={styles.radioGroup}>
                {['Low', 'Medium', 'High'].map((priority) => (
                    <TouchableOpacity
                        key={priority}
                        onPress={() => setStatus(priority)}
                        style={[
                            styles.radioButton,
                            status === priority && styles.radioButtonSelected,
                        ]}
                    >
                        <Text style={styles.radioText}>{priority}</Text>
                    </TouchableOpacity>
                ))}
            </View>
            {errors.status && <Text style={styles.error}>{errors.status[0]}</Text>}

            {/* Submit Button */}

            {loading ? (
                <ActivityIndicator size='large' color='#007bff' style={{ marginVertical:10 }}/>
            ):(
                <Button title="Book Activity" onPress={handleBooking} color="#007BFF"  disabled={loading }/>
            )}
           
        </View>
    );
};

const styles = StyleSheet.create({
    container: {
        flex: 1,
        padding: 20,
        backgroundColor: '#fff',
    },
    title: {
        fontSize: 20,
        fontWeight: 'bold',
        marginBottom: 10,
    },
    input: {
        borderWidth: 1,
        borderColor: '#ccc',
        borderRadius: 5,
        padding: 10,
        marginBottom: 10,
    },
    datePicker: {
        padding: 15,
        backgroundColor: '#f5f5f5',
        borderRadius: 5,
        marginBottom: 10,
        alignItems: 'center',
    },
    dateText: {
        fontSize: 16,
    },
    error: {
        color: 'red',
        marginBottom: 10,
    },
    label: {
        fontSize: 16,
        marginBottom: 10,
    },
    radioGroup: {
        flexDirection: 'row',
        justifyContent: 'space-around',
        marginBottom: 20,
    },
    radioButton: {
        padding: 10,
        borderWidth: 1,
        borderColor: '#ccc',
        borderRadius: 5,
    },
    radioButtonSelected: {
        backgroundColor: '#007BFF',
    },
    radioText: {
        color: '#333',
    },
});

export default Booking;
