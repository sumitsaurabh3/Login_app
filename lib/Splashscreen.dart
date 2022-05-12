import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/Login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Secret_Screen.dart';
String finalEmail='';
class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    Timer(Duration(seconds: 2),()=>Get.to(finalEmail==null ? Login() : Secret_Screen()));
    super.initState();
  }
  Future getValidationData()async{
    final SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    var obtainedEmail=sharedPreferences.getString('email');
    setState((){
     // finalEmail=obtainedEmail;

    });
    print(finalEmail);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Icon(Icons.local_activity),
              radius: 50.0,

            ),
            Padding(padding: const EdgeInsets.only(top: 8.0)),
          ],
        ),
      ),
    );
  }
}
