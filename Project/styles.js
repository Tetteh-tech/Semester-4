// styles.js
import { StyleSheet } from 'react-native';

const styles = StyleSheet.create({
 
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 20,
  },
  input: {
    borderWidth: 1,
    borderColor: '#ccc',
    padding: 10,
    marginBottom: 10,
    borderRadius: 5,
    fontSize: 16,
    color: 'white',
  },
  link: {

    color: '#1E90FF',
    marginTop: 16,
    textAlign: 'center',

  },
  error:{
    color: 'red',
    marginBottom: 16,
  },
  
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
    // backgroundColor: '#f7f7f7',
  },
  loading: {
    fontSize: 18,
    color: 'gray',
    textAlign: 'center',
    marginTop: 20,
  },
  successMessage: {
    color: 'green',
    fontSize: 18,
    marginBottom: 20,
    textAlign: 'center',
  },
  greeting: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 10,
    color:'white',
  },
  featuresContainer: {
    marginTop: 20,
    marginBottom: 20,
  },
  features: {
    fontSize: 18,
    marginBottom: 10,
    color:'white',
  },
  logoutButton: {
    backgroundColor: '#f44336',
    paddingVertical: 10,
    paddingHorizontal: 30,
    borderRadius: 5,
    marginTop: 20,
  },
  logoutText: {
    color: '#fff',
    fontSize: 18,
    textAlign: 'center',
  },
});

export default styles;
