import 'package:electronicshop/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: MaterialButton(
        child: Text('Logout'),
        onPressed: () async {
          try {
            await FirebaseAuth.instance.signOut();
            Get.to(LoginScreen());
            Get.snackbar("Successfully", "Logged out");
          } catch (e) {
            print('Error');
          }
        },
      ),
    );
  }
}
