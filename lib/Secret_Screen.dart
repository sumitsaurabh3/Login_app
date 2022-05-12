import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/Login.dart';
import 'package:login_app/Splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Secret_Screen extends StatefulWidget {

  @override
  _Secret_ScreenState createState() => _Secret_ScreenState();
}

class _Secret_ScreenState extends State<Secret_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Secret Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello $finalEmail',style: TextStyle(fontSize: 26),),
            MaterialButton(
                color: Colors.redAccent,
                child: Text('Logout'),
                onPressed: ()async {
                  final SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
                  sharedPreferences.remove(finalEmail);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                })

          ],
        ),
      ),
    );
  }
}
