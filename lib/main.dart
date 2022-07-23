import 'package:flutter/material.dart';
import 'package:sitta_mobile/UI/LoginPage/login_screen.dart';
import 'package:sitta_mobile/UI/RegisterPage/register_screen.dart';
import 'package:sitta_mobile/UI/SplashScreen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/register-page': (context) => RegisterScreen(),
        '/login-page': (context) => LoginScreen()
      },
    );
  }
}
