import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CurentUser {
  final String login;
  final String description;
  final int counSub;

  CurentUser({
    required this.login,
    required this.description,
    required this.counSub,
  });

  static Future<CurentUser> getUserData(String uid) async {
    try{
      final DocumentSnapshot path = await FirebaseFirestore.instance.collection('Users').doc(uid).get();

      if(path.exists) {
        final userData = path.data() as Map<String, dynamic>;
        return CurentUser(
          login: userData['login'] ?? 'failed loading data',
          description: userData['description'] ?? 'failed loading data',
          counSub: userData['counSub'] ?? 0,
        );
      } else {
        throw Exception("User not found");
      }
    } catch(e){
      throw Exception(e.toString());
    }
  }
}