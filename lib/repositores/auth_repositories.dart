import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:photo_surfing/repositores/current_user.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Метод входа пользователя
  Future<User?> signIn(String email, password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      _firestore.collection('Users').doc(userCredential.user!.uid).update({
        'email': email,
        'uid': userCredential.user!.uid,
      });

      return userCredential.user;
    } catch (e) {
      throw Exception('Error signing with email and password');
    }
  }

  // Метод регистрации пользователя
  Future<User?> signUp(String email, password, login, description) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      _firestore.collection('Users').doc(userCredential.user!.uid).set({
        'email': email,
        'uid': userCredential.user!.uid,
        'login': login,
        'description': description,
        'coutSub': 0,
      });

      return userCredential.user;
    } catch (e) {
      throw Exception('Error signing with email and password');
    }
  }

  // Метод выхода пользователя
  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Геттер для получения информации о состоянии аутентификации
  Stream<User?> get user => _auth.authStateChanges();
}