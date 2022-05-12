import 'package:flutter/material.dart';
import 'package:login_app/routes.dart';

import 'Login.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashRoute,
      routes: routes,
      home: LoginView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}