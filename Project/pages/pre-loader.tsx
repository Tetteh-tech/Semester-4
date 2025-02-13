// import React, { useState, useEffect } from 'react';
// import { View, Text, ActivityIndicator, StyleSheet } from 'react-native';
// import LoginForm from './auth/LoginScreen';

// const PreLoader = () => {
//   const [isLoading, setIsLoading] = useState(true);

//   useEffect(() => {
//     // Simulate a loading delay for 3 seconds
//     setTimeout(() => {
//       setIsLoading(false); // Hide pre-loader after 3 seconds
//     }, 3000); // Adjust time as needed
//   }, []);

//   if (isLoading) {
//     return (
//       <View style={styles.loaderContainer}>
//         <ActivityIndicator size="large" color="#0000ff" />
//         <Text style={styles.loaderText}>Loading...</Text>
//       </View>
//     );
//   }

//   // If loading is complete, show main app content or redirect to another screen
//   return <LoginForm navigation={navigation} route={route} />; // This can be your main content
// };

// const styles = StyleSheet.create({
//   loaderContainer: {
//     flex: 1,
//     justifyContent: 'center',
//     alignItems: 'center',
//     backgroundColor: '#fff',
//   },
//   loaderText: {
//     marginTop: 20,
//     fontSize: 18,
//     color: '#333',
//   },
// });

// export default PreLoader;
