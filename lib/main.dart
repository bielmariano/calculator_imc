import 'package:calculadora_imc/pages/calculator_page.dart';
import 'package:calculadora_imc/pages/login_page/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora IMC',
      theme: ThemeData(
        primaryColor: Color(0xFFC1007E),
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/calculator': (context) => CalculatorPage(),
      },
    );
  }
}
