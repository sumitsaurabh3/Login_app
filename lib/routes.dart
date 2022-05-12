
import 'Login.dart';
import 'Secret_Screen.dart';
import 'Splashscreen.dart';

const String SplashRoute = "/splash";
const String HomeRoute = "/home";
const String LoginRoute = "/login";

final routes = {
  SplashRoute: (context) => SplashView(),
  HomeRoute: (context) => HomeView(),
  LoginRoute: (context) => LoginView()
};