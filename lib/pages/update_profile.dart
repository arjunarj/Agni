import 'package:agni/pages/profile_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final user = FirebaseAuth.instance.currentUser!;
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _userNameController = TextEditingController();

  Future addUserDetails(
      String firstName, String lastName, String userName) async {
    await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
      'first_name': firstName,
      'last_name': lastName,
      'user_name': userName,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            'Update Profile',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                //firstname
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                    child: TextField(
                      controller: _firstNameController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.indigo),
                              borderRadius: BorderRadius.circular(12)),
                          hintText: 'First Name',
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ),
                ),
                // lastname
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 20, 5),
                    child: TextField(
                      controller: _lastNameController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.indigo),
                              borderRadius: BorderRadius.circular(12)),
                          hintText: 'Last Name',
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: TextField(
                  controller: _userNameController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Username',
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
            ),
            MaterialButton(
                onPressed: () => addUserDetails(
                    _firstNameController.text.trim(),
                    _lastNameController.text.trim(),
                    _userNameController.text.trim()),
                color: Colors.indigo,
                child: Text("Update Profile Details")),
          ],
        ),
      )),
    );
  }
}
