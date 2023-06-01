import 'package:fetch_api_demo/firebase_services/splash_services.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.redAccent,
      //   foregroundColor: Colors.black45,
      //   centerTitle: true,
      //   title: const Text('Sign Firebase'),
      // ),
      body: Center(
        child: Text(
          'Firebase tutorials',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
