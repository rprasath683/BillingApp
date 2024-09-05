import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bill_management_app_v1/bloc/authentication_bloc.dart';
import 'package:bill_management_app_v1/pages/login_page.dart';
import 'package:bill_management_app_v1/pages/signup_page.dart';
import 'package:bill_management_app_v1/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temple',
      debugShowCheckedModeBanner: false,
      home: HomePage(), // Set the HomePage as the home
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
      },
    );
  }
}
