import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _fierstore = FirebaseFirestore.instance;

  //Метод входа пользователя
  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
      return userCredential.user;
    } catch (e) {
      throw Exception("Error signIn with email and password: ${e}");
    }
  }
}