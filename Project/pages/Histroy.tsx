import React, { useEffect, useState } from 'react';
import { View, Text, FlatList, StyleSheet, ActivityIndicator, Alert, TouchableOpacity, Modal, TextInput, Button } from 'react-native';
import AsyncStorage from '@react-native-async-storage/async-storage';
import axios from 'axios';

interface Home {
  id: number;
  activity: string;
  time: string;
  date: string;
  status: string;
}

const Histroy = () => {
  const [homes, setHomes] = useState<Home[]>([]);
  const [loading, setLoading] = useState(true);
  const [editingHome, setEditingHome] = useState<Home | null>(null); // Store home item being edited
  const [modalVisible, setModalVisible] = useState(false); // Control modal visibility
  const [updatedActivity, setUpdatedActivity] = useState(''); 
  const [updatedTime, setUpdatedTime] = useState('');
  const [updatedDate, setUpdatedDate] = useState('');
  const [updatedStatus, setUpdatedStatus] = useState('');
  const API_URL = "http://localhost:8000/api"; // Ensure this is your correct backend URL

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

      console.log('Fetched Data:', response.data);
    //   const now = new Date();
    //   const filteredHomes = response.data.homes.filter((home: Home) => {
    //     const activityData = new Date(home.date + 'T' + home.time);
    //     const timeDiff = now.getTime() - activityData.getTime();
    //     return timeDiff < 24 * 60 * 60 * 1000;
    //   });

      setHomes(response.data.homes.reverse());
    } catch (error) {
      console.error('Error fetching user homes:', error);
    } finally {
      setLoading(false);
    }
  };

  // delete function 
  const deleteHome = async (id: number) => {
    try {
      const token = await AsyncStorage.getItem('authToken');
      if (!token) {
        console.log('No token found!');
        return;
      }
      await axios.delete(`${API_URL}/home/${id}`, {
        headers: {
          Authorization: `Bearer ${token}`,
          'Content-Type': 'application/json',
        },
      });
      setHomes(homes.filter(home => home.id !== id))
      Alert.alert('success', 'Activity deleted successfully');
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
    setUpdatedStatus(home.status);
    setModalVisible(true); // Show modal for editing
  };

  const handleUpdate = async () => {
    if (!editingHome) return;

    const token = await AsyncStorage.getItem('authToken');
    if (!token) {
      console.log('No token found!');
      return;
    }

    try {
      await axios.put(`${API_URL}/home/${editingHome.id}`, {
        activity: updatedActivity,
        time: updatedTime,
        date: updatedDate,
        status: updatedStatus,
      }, {
        headers: {
          Authorization: `Bearer ${token}`,
          'Content-Type': 'application/json',
        },
      });
      // Update homes state with the updated home data
      setHomes(homes.map(home => home.id === editingHome.id ? { ...home, activity: updatedActivity, time: updatedTime, date: updatedDate, status: updatedStatus } : home));
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

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Your Activities</Text>
      {homes.length === 0 ? (
        <Text style={styles.noData}>No activities found.</Text>
      ) : (
        <FlatList
          data={homes}
          keyExtractor={(item) => item.id.toString()}
          renderItem={({ item }) => (
            <View style={styles.card}>
              <Text style={styles.text}>Activity: {item.activity}</Text>
              <Text style={styles.text}>Time: {item.time}</Text>
              <Text style={styles.text}>Date: {item.date || item.date}</Text>
              <Text style={styles.text}>Status: {item.status}</Text>
             
            </View>
          )}
        />
      )}

      {/* Modal for Editing */}
      
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: '#f4f4f4',
  },
  title: {
    fontSize: 22,
    fontWeight: 'bold',
    marginBottom: 10,
    color: 'black',
  },
  noData: {
    fontSize: 18,
    color: 'gray',
  },
  card: {
    backgroundColor: '#fff',
    padding: 15,
    marginVertical: 8,
    borderRadius: 10,
    shadowColor: '#000',
    shadowOpacity: 0.2,
    shadowRadius: 4,
    elevation: 2,
  },
  text: {
    fontSize: 16,
    color: '#333',
  },
  editButton: {
    marginTop: 10,
    backgroundColor: 'orange',
    padding: 8,
    borderRadius: 5,
    alignItems: 'center',
  },
  editText: {
    color: 'white',
    fontWeight: 'bold',
  },
  deleteButton: {
    marginTop: 10,
    backgroundColor: 'red',
    padding: 8,
    borderRadius: 5,
    alignItems: 'center',
  },
  deleteText: {
    color: 'white',
    fontWeight: 'bold',
  },
  loader: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  modalContainer: {
    flex: 1,
    justifyContent: 'center',
    padding: 20,
    backgroundColor: 'white',
  },
  modalTitle: {
    fontSize: 22,
    fontWeight: 'bold',
    marginBottom: 10,
  },
  input: {
    height: 40,
    borderColor: '#ccc',
    borderWidth: 1,
    marginBottom: 10,
    paddingHorizontal: 8,
  },
});

export default Histroy;
