import 'package:flutter/material.dart';
import 'package:flutter_application_1/number_register/registerNumber(warning).dart';
import 'package:flutter_application_1/number_register/registerNumber.dart';
import 'package:flutter_application_1/router/routers.dart';





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
      home:registerNumWarning(),
    );
  }
}

