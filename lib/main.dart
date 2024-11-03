import 'package:flutter/material.dart';
import 'package:my_trans_kutaraja/pages/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My TransKutaraja',
      theme: ThemeData(
        colorScheme: color,
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}

ColorScheme color = const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF007DFE),
    onPrimary: Colors.white,
    secondary: Color(0xFFFFF8D6),
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black);
