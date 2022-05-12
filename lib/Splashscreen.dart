import 'dart:async';
import 'package:login_app/shared_service_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:login_app/routes.dart';
class SplashView extends StatefulWidget {
  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView> {
  final PrefService _prefService = PrefService();

  @override
  void initState() {
    _prefService.readCache("password").then((value) {
      print(value.toString());
      if (value != null) {
        return Timer(Duration(seconds: 2),
                () => Navigator.of(context).pushNamed(HomeRoute));
      } else {
        return Timer(Duration(seconds: 2),
                () => Navigator.of(context).pushNamed(LoginRoute));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Icon(
            Icons.app_blocking,
          )),
    );
  }
}