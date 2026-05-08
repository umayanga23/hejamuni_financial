import 'package:flutter/material.dart';
import 'package:hejamuni_financial/common/color_extension.dart';
import 'package:hejamuni_financial/view/login/welcoe_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hejamuni Financial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "inter",
        scaffoldBackgroundColor: TColor.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: TColor.primary,
          background: TColor.gray80,
          primary: TColor.primary,
          primaryContainer: TColor.gray60,
          secondary: TColor.secondary,
        ),
        useMaterial3: false,
      ),
      home: const WelcomeView(),
    );
  }
}
