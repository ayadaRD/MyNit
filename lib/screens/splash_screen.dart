import 'package:flutter/material.dart';
import 'home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Text('My Nit', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
      ),
    );
  }
  @override
  void initState() {
    splashWait();
    super.initState();
  }

  void splashWait() {
    Future.delayed(const Duration(seconds: 2)).then((onValue) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) {
            return const HomeScreen();
          }), (Route<dynamic> route) => false);
    });
  }
}

