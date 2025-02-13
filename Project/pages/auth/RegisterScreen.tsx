import React, { useEffect, useState } from 'react';
import { View, Text, TextInput, Button, StyleSheet, TouchableOpacity, ActivityIndicator } from 'react-native';
// import styles from '../../styles';
import { NavigationProp } from '@react-navigation/native';
import axios from 'axios';
import { widthPercentageToDP as wp, heightPercentageToDP as hp } from 'react-native-responsive-screen';


const RegisterScreen = ({ navigation }: { navigation: NavigationProp<any> }) => {
  const [name, setName] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [password_confirmation, setPassword_confirmation] = useState('');
    const [loading, setLoading] = useState(false); // 🔴 NEW: Track loading state
  
  const [errors, setErrors] = useState<{ name?: string[]; email?: string[]; password?: string[]; password_confirmation?: string[] }>({});

  const API_URL = "http://localhost:8000/api"; // Ensure this is your correct backend URL

  const handleRegister = async () => {
    setLoading(true); // Start animation

    try {
      const response = await axios.post(`${API_URL}/register`, {
        name,
        email,
        password,
        password_confirmation,
      });

      console.log('Success:', response.data);
      navigation.reset({
        index:0,
        routes :[{name:"Login",params:{ successMessage:'Register done' }}]
      });

      // Clear form
      setErrors({});
      setName('');
      setEmail('');
      setPassword('');
      setPassword_confirmation('');
    } catch (error) {
      if (axios.isAxiosError(error) && error.response && error.response.status === 422) {
        setErrors(error.response.data.errors);
      } else {
        console.error('Something went wrong, try reloading', error);
      }
    } finally {
      setLoading(false);
    }
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Register</Text>

      <TextInput
        style={styles.input}
        placeholder="Name"
        placeholderTextColor={'#ccc'}
        value={name}
        onChangeText={setName}
      />
      {errors.name && <Text style={styles.error}>{errors.name[0]}</Text>}

      <TextInput
        style={styles.input}
        placeholder="Email"
        placeholderTextColor={'#ccc'}
        keyboardType="email-address"
        value={email}
        onChangeText={setEmail}
      />
      {errors.email && <Text style={styles.error}>{errors.email[0]}</Text>}

      <TextInput
        style={styles.input}
        placeholderTextColor={'#ccc'}
        placeholder="Password"
        secureTextEntry
        value={password}
        onChangeText={setPassword}
      />
      {errors.password && <Text style={styles.error}>{errors.password[0]}</Text>}

      <TextInput
        style={styles.input}
        placeholderTextColor={'#ccc'}
        placeholder="Confirm Password"
        secureTextEntry
        value={password_confirmation}
        onChangeText={setPassword_confirmation}
      />
      {errors.password_confirmation && <Text style={styles.error}>{errors.password_confirmation[0]}</Text>}
      {loading ? (
         <ActivityIndicator size="large" color="#007bff" style={{ marginVertical:10 }}  />
      ) :(
        <Button title="Register" onPress={handleRegister} 
         disabled={loading} />
      )
    }
        

      <TouchableOpacity onPress={() => navigation.navigate('Login')}>
        <Text style={styles.link}>Already have an account? Login</Text>
      </TouchableOpacity>
    </View>
  );
};
const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: wp('5%'), // Responsive padding
  },
  title: {
    fontSize: wp('6%'), // Responsive font size
    fontWeight: 'bold',
    marginBottom: hp('2%'),
  },
  input: {
    width: wp('80%'), // Responsive width
    height: hp('6%'), // Responsive height
    borderWidth: 1,
    borderColor: '#ccc',
    borderRadius: 8,
    paddingHorizontal: wp('3%'),
    marginBottom: hp('2%'),
  },
  error: {
    color: 'red',
    fontSize: wp('4%'),
    marginBottom: hp('1%'),
  },
  link: {
    color: '#007bff',
    marginTop: hp('2%'),
    fontSize: wp('4.5%'),
  },
});

export default RegisterScreen;
