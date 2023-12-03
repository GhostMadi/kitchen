import 'package:flutter/material.dart';
import 'package:flutter_application_1/number_register/registerNumber.dart';
import 'package:flutter_application_1/router/routers.dart';
import 'package:flutter_application_1/start/register/register_page.dart';
import 'package:flutter_application_1/start/register2/screen_4.dart';
import 'package:flutter_application_1/start/sms/Sms_page_2.dart';
import 'package:flutter_application_1/start/sms/sms_Page.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      home:registerNum(),
    );
  }
}

