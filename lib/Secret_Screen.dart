import 'package:flutter/material.dart';
import 'package:login_app/routes.dart';
import 'package:login_app/shared_service_preferences.dart';

class HomeView extends StatelessWidget {
  final PrefService _prefService = PrefService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(

        centerTitle: true,
        title: Text("Secret Screen"),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("This is Secret Screen",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ElevatedButton(
                onPressed: () async {
                  await _prefService.removeCache("password").whenComplete(() {
                    Navigator.of(context).pushNamed(LoginRoute);
                  });
                },
                child: Text("Log out",style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}