import 'package:carkh_app/core/auth/forgetpassword/forgot_otp_screen.dart';
import 'package:carkh_app/core/auth/login/test.dart';
import 'package:carkh_app/core/auth/profile_user/profile_screen.dart';
import 'package:carkh_app/modules/page/bottom_navigation_widgets.dart';
import 'package:carkh_app/core/auth/forgetpassword/phone_email_screen.dart';
import 'package:carkh_app/core/auth/login/login_screen.dart';
import 'package:carkh_app/core/auth/register/email_phone_screen.dart';
import 'package:carkh_app/core/auth/register/fullname_screen.dart';
import 'package:carkh_app/core/auth/register/singup_screen.dart';
import 'package:carkh_app/modules/page/homepage.dart';
import 'package:carkh_app/modules/page/manew.dart';
// import 'package:carkh_app/views/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: test(),
    );
  }
}
