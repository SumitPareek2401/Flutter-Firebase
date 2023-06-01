import 'package:fetch_api_demo/firestore/firestore_list_screen.dart';
import 'package:fetch_api_demo/ui/auth/login_screen.dart';
import 'package:fetch_api_demo/ui/posts/post_screen.dart';
import 'package:fetch_api_demo/ui/upload_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashServices {
  void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;

    final user = auth.currentUser;

    if (user != null) {
      Timer(
        const Duration(seconds: 2),
        () => Navigator.push(
          context,
          MaterialPageRoute(
            // builder: (context) => const UploadImageScreen(),
            // builder: (context) => const FireStoreScreen(),
             builder: (context) => const PostScreen(),
          ),
        ),
      );
    } else {
      Timer(
        const Duration(seconds: 2),
        () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        ),
      );
    }
  }
}
