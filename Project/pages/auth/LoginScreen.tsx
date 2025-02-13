import React, { useEffect, useState } from 'react';
import { View, Text, TextInput, Button, StyleSheet, TouchableOpacity, ActivityIndicator } from 'react-native';
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';
import styles from '../../styles';
import { NavigationProp, RouteProp } from '@react-navigation/native';
import { widthPercentageToDP as wp, heightPercentageToDP as hp } from 'react-native-responsive-screen';


const LoginForm = ({ navigation, route }: { navigation: NavigationProp<any>; route: RouteProp<any> }) => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [errors, setErrors] = useState<{ email?: string[]; password?: string[] }>({});
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [loading, setLoading] = useState(false); // 🔴 NEW: Track loading state
  const { successMessage } = route.params || {};
  const API_URL = "http://localhost:8000/api"; 
8
  useEffect(() => {
    if (successMessage || errorMessage) {
      const timer = setTimeout(() => setErrorMessage(null), 5000);
      return () => clearTimeout(timer);
    }
  }, [successMessage, errorMessage]);

  const handleLogin = async () => {
    setLoading(true); // Start animation

    try {
      const response = await axios.post(`${API_URL}/login`, { email, password });
      console.log('Response data:', response.data);
      const { user, token } = response.data;

      if (token && user) {
        await AsyncStorage.setItem('authToken', token);
        await AsyncStorage.setItem('user', JSON.stringify(user));
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;

        // Debug
        const storedToken = await AsyncStorage.getItem('authToken');
        console.log('Stored Token:', storedToken);

        setErrors({});
        setEmail('');
        setPassword('');

        navigation.reset({
          index: 0,
          routes: [{ name: "Home", params: { successMessage: "Booking successful!" } }]
        });
      } else {
        console.error('No token received from the server');
      }

    } catch (error: any) {
      if (axios.isAxiosError(error) && error.response) {
        if (error.response.status === 404) {
          setErrorMessage('User does not exist. Please register first.');
        } else if (error.response.status === 401) {
          setErrorMessage('Invalid credentials. Please try again.');
        } else if (error.response.status === 422) {
          setErrors(error.response.data.errors);
        } else {
          setErrorMessage('Something went wrong. Please try again.');
        }
      } else {
        setErrorMessage('Could not connect to the server. Please try again later.');
      }
    } 
    finally {
      setLoading(false); // Stop animation
    }
  };

  return (
    <View style={styles.container}>
      <Text style={{ fontSize: 24, marginBottom: 20 }}>Login</Text>

      {successMessage && <Text style={{ color: 'green', marginBottom: 10 }}>{successMessage}</Text>}
      {errorMessage && <Text style={{ color: 'red', marginBottom: 10 }}>{errorMessage}</Text>}

      <Text style={styles.title}>Login</Text>
      <TextInput
        style={styles.input}
        placeholder="Email"
        value={email}
        onChangeText={setEmail}
        placeholderTextColor={'#ccc'}

      />
      {errors.email && <Text style={styles.error}>{errors.email[0]}</Text>}

      <TextInput
        style={styles.input}
        placeholder="Password"
        value={password}
        onChangeText={setPassword}
        placeholderTextColor={'#ccc'}
        secureTextEntry
      />
      {errors.password && <Text style={styles.error}>{errors.password[0]}</Text>}

      {/* 🔴 Show spinner when loading, otherwise show button */}
      {loading ? (
        <ActivityIndicator size="large" color="#007bff" style={{ marginVertical: 10 }} />
      ) : (
        <Button title="Login" onPress={handleLogin} disabled={loading} />
      )}

      <TouchableOpacity onPress={() => navigation.navigate('Register')} disabled={loading}>
        <Text style={styles.link}>Don't have an account? Register</Text>
      </TouchableOpacity>
    </View>
  );
};
// const styles = StyleSheet.create({
//   container: {
//     flex: 1,
//     justifyContent: 'center',
//     alignItems: 'center',
//     paddingHorizontal: wp('5%'), // Responsive padding
//   },
//   title: {
//     fontSize: wp('6%'), // Responsive font size
//     fontWeight: 'bold',
//     marginBottom: hp('2%'),
//   },
//   input: {
//     width: wp('80%'), // Responsive width
//     height: hp('6%'), // Responsive height
//     borderWidth: 1,
//     borderColor: '#ccc',
//     borderRadius: 8,
//     paddingHorizontal: wp('3%'),
//     marginBottom: hp('2%'),
//   },
//   error: {
//     color: 'red',
//     fontSize: wp('4%'),
//     marginBottom: hp('1%'),
//   },
//   link: {
//     color: '#007bff',
//     marginTop: hp('2%'),
//     fontSize: wp('4.5%'),
//   },
// });

export default LoginForm;
