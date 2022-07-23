import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sitta_mobile/UI/LoginPage/login_screen.dart';
import 'splash_screen.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 300, bottom: 10),
              child: Image.asset("assets/icon_sitta.png",
                  height: 80, width: 80, fit: BoxFit.fill),
            ),
            Text(
              "SITTA",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D47A1)),
            ),
            Text(
              "Sistem Informasi Tiras dan Transaksi Bahan Ajar Universitas Terbuka",
              style: TextStyle(fontSize: 14, color: Color(0xff909090)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
