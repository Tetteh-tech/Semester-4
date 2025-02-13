import React, { useEffect, useState } from 'react';
import { 
  View, Text, FlatList, StyleSheet, ActivityIndicator, Alert, 
  TouchableOpacity, Modal, TextInput, Button ,Animated , Easing
} from 'react-native';
import DateTimePicker from '@react-native-community/datetimepicker';

import AsyncStorage from '@react-native-async-storage/async-storage';
import axios from 'axios';

interface Home {
  id: number;
  activity: string;
  time: string;
  date: string;
  status: string;
}

const priorityColors: { [key: string]: string } = {
  High: '#FF6347',
  Medium: '#FFD700',
  Low: '#32cd32',
};

const UserHomes = () => {
  const [homes, setHomes] = useState<Home[]>([]);
  const [loading, setLoading] = useState(true);
  const [editingHome, setEditingHome] = useState<Home | null>(null);
  const [modalVisible, setModalVisible] = useState(false);
  const [updatedActivity, setUpdatedActivity] = useState('');
  const [updatedTime, setUpdatedTime] = useState('');
  const [updatedDate, setUpdatedDate] = useState('');
  const [status, setStatus] = useState('Low');
  const [errors, setErrors] = useState<{ activity?: string[]; time?: string[]; date?: string[]; status?: string[] }>({});
  const [date, setDate] = useState(new Date());
  const [time, setTime] = useState(new Date());
  const [showDatePicker, setShowDatePicker] = useState(false);
  const [showTimePicker, setShowTimePicker] = useState(false);
  const [animation] = useState(new Animated.Value(0));
 
  useEffect(() => {
    fetchHomes();
    Animated.loop(
      Animated.sequence([
        Animated.timing(animation, {
          toValue: 1,
          duration: 1500,
          easing: Easing.linear,
          useNativeDriver: true,
        }),
        Animated.timing(animation, {
          toValue: 0,
          duration: 1500,
          easing: Easing.linear,
          useNativeDriver: true,
        })
      ])
    ).start();
  }, []);

  const API_URL = "http://localhost:8000/api"; // Ensure this is correct

  const fetchHomes = async () => {
    try {
      const token = await AsyncStorage.getItem('authToken');
      if (!token) {
        console.log('No token found!');
        return;
      }

      const response = await axios.get(`${API_URL}/home`, {
        headers: {
          Authorization: `Bearer ${token}`,
          'Content-Type': 'application/json',
        },
      });

      console.log('Raw Data:', response.data.homes);
      const today = new Date().toISOString().split('T')[0];

      // Filter activities for today's date
      const filteredHomes = response.data.homes.filter((home: Home) => home.date >= today);
      console.log('Filtered Data:', filteredHomes);

      // Check if data exists before sorting
      if (!filteredHomes.length) {
        console.log("No activities found for today.");
        setHomes([]);
        return;
      }

      // Priority Mapping
      const priorityMap: Record<string, number> = { High: 1, Medium: 2, Low: 3 };

      // Sort by priority, handle missing statuses
      const sortedHomes = filteredHomes
      .filter((home: Home) => home.status && priorityMap[home.status])
      .sort((a: Home, b: Home) => (priorityMap[a.status] || 3) - (priorityMap[b.status] || 3));
    

      setHomes(sortedHomes);
      console.log('Sorted Data:', sortedHomes);

    } catch (error) {
      console.error('Error fetching user homes:', error);
    } finally {
      setLoading(false);
    }
  };

  // Delete Function
  const deleteHome = async (id: number) => {
    try {
      const token = await AsyncStorage.getItem('authToken');
      if (!token) {
        console.log('No token found!');
        return;
      }

      await axios.delete(`${API_URL}/home/${id}`, {
        headers: { Authorization: `Bearer ${token}`, 'Content-Type': 'application/json' },
      });

      setHomes(homes.filter(home => home.id !== id));
      Alert.alert('Success', 'Activity deleted successfully');
    } catch (error) {
      console.error('Error deleting activity:', error);
      Alert.alert('Error', 'Could not delete activity');
    }
  };

  const handleEdit = (home: Home) => {
    setEditingHome(home);
    setUpdatedActivity(home.activity);
    setUpdatedTime(home.time);
    setUpdatedDate(home.date);
    setStatus(home.status);
    setModalVisible(true);

  };

  const handleUpdate = async () => {
    if (!editingHome) return;

    try {
      const token = await AsyncStorage.getItem('authToken');
      if (!token) {
        console.log('No token found!');
        return;
      }

      await axios.put(`${API_URL}/home/${editingHome.id}`, {
        activity: updatedActivity,
        time: updatedTime,
        date: updatedDate,
        status: status,
      }, {
        headers: { Authorization: `Bearer ${token}`, 'Content-Type': 'application/json' },
      });

      setHomes(homes.map(home => 
        home.id === editingHome.id 
          ? { ...home, activity: updatedActivity, time: updatedTime, date: updatedDate, status: status }
          : home
      ));

      setModalVisible(false);
      Alert.alert('Success', 'Activity updated successfully');
    } catch (error) {
      console.error('Error updating activity:', error);
      Alert.alert('Error', 'Could not update activity');
    }
  };

  useEffect(() => {
    fetchHomes();
  }, []);

  if (loading) {
    return (
      <View style={styles.loader}>
        <ActivityIndicator size="large" color="#0000ff" />
      </View>
    );
  }
  const neonGlow = animation.interpolate({
    inputRange: [0, 1],
    outputRange: ['rgba(255, 0, 150, 0.4)', 'rgba(0, 255, 255, 0.4)']
  });
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Your Activities</Text>
      {homes.length === 0 ? (
        <Text style={styles.noData}>No activities for Today please add.</Text>
      ) : (
        <FlatList
          data={homes}
          keyExtractor={(item) => item.id.toString()}
          renderItem={({ item }) => (
            <View style={[styles.card, { backgroundColor: priorityColors[item.status] || '#fff' }]}>
              <Text style={styles.text}>Activity: {item.activity}</Text>
              <Text style={styles.text}>Time: {item.time}</Text>
              <Text style={styles.text}>Date: {item.date}</Text>
              <Text style={styles.text}>Status: {item.status}</Text>
              <TouchableOpacity style={styles.editButton} onPress={() => handleEdit(item)}>
                <Text style={styles.editText}>Edit</Text>
              </TouchableOpacity>
              <TouchableOpacity style={styles.deleteButton} onPress={() => deleteHome(item.id)}>
                <Text style={styles.deleteText}>Delete</Text>
              </TouchableOpacity>
            </View>
          )}
        />
      )}

      {/* Modal for Editing */}
      <Modal visible={modalVisible} animationType="slide" onRequestClose={() => setModalVisible(false)}>
        <View style={styles.modalContainer}>
          <Text style={styles.modalTitle}>Edit Activity</Text>

          <TextInput style={styles.input} value={updatedActivity} onChangeText={setUpdatedActivity} placeholder="Activity" />
          {errors.activity && <Text style={styles.error}>{errors.activity[0]}</Text>}
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
            {errors.status && <Text style={styles.error}>{errors.status[0]}</Text>}

                                  <Text style={styles.radioText}>{priority}</Text>
                              </TouchableOpacity>
                          ))}
                      </View>
          <Button title="Update" onPress={handleUpdate} />
          <Button title="Cancel" onPress={() => setModalVisible(false)} />
        </View>
      </Modal>
    </View>
  );
};

// Styles
const styles = StyleSheet.create({
  container: { flex: 1, padding: 20, backgroundColor: '#f4f4f4' },
  title: { fontSize: 22, fontWeight: 'bold', marginBottom: 10, color: 'black' },
  noData: { fontSize: 18, color: 'gray' },
  card: { padding: 15, marginVertical: 8, borderRadius: 10, elevation: 2 },
  text: { fontSize: 16, color: '#333' },
  editButton: { marginTop: 10, backgroundColor: 'orange', padding: 8, borderRadius: 5, alignItems: 'center' },
  editText: { color: 'white', fontWeight: 'bold' },
  deleteButton: { marginTop: 10, backgroundColor: 'red', padding: 8, borderRadius: 5, alignItems: 'center' },
  deleteText: { color: 'white', fontWeight: 'bold' },
  loader: { flex: 1, justifyContent: 'center', alignItems: 'center' },
  modalContainer: { flex: 1, justifyContent: 'center', padding: 20, backgroundColor: 'white' },
  modalTitle: { fontSize: 22, fontWeight: 'bold', marginBottom: 10 },
  input: { height: 40, borderColor: '#ccc', borderWidth: 1, marginBottom: 10, paddingHorizontal: 8 },
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

export default UserHomes;
