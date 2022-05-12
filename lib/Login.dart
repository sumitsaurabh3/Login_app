import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Secret_Screen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Login Page'),
      ),
      body:
      Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Enter E-mail",
                  contentPadding: EdgeInsets.all(10.0),
                  hintStyle: TextStyle(
                    color: Colors.blueGrey,fontWeight: FontWeight.bold,

                  )
                ),
              ),),
              Padding(padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      hintText: "Enter Password",
                      contentPadding: EdgeInsets.all(10.0),
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,fontWeight: FontWeight.bold,

                      )
                  ),
                ),),
              MaterialButton(
                  color: Colors.red,
                  child: Text('Login'),

                  onPressed: () async{
                    WidgetsFlutterBinding.ensureInitialized();
                    final SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
                 sharedPreferences.setString('email', emailController.text);
                 Get.to(Secret_Screen());
                  })

            ],
          ),

        ),
      ),
    );
  }
}
