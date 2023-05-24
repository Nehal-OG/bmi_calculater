import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculater());
}

class BMICalculater extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0C1E),
        appBarTheme: AppBarTheme(color: Color(0xff0A0C1E)),
        scaffoldBackgroundColor: Color(0xff0A0C1E),
      ),
      home: InputPages(),
    );
  }
}
