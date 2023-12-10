import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mapy/core/helpers/extentions.dart';
import 'package:mapy/core/routing/routes.dart';

class MyFireStore {
  User? user;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> addUser(String phoneNumber) {
    user = getUser();
    return users
        .doc(user!.uid)
        .set({
          'phoneNumber': phoneNumber,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  getUserData() async {
    user = getUser();
    Map? userData;
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get()
        .then((DocumentSnapshot querySnapshot) {
      userData = querySnapshot.data() as Map;
    });
    return userData;
  }

  logout({required BuildContext context}) async {
    await FirebaseAuth.instance.signOut();
    context.pushNamed(Routes.loginView);
  }

  User? getUser() {
    return FirebaseAuth.instance.currentUser;
  }
}
