import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

ColorScheme defaultColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromARGB(255, 1, 97, 71),
    onPrimary: Colors.white,
    secondary: Color.fromARGB(255, 255, 206, 21),
    onSecondary: Colors.white,
    error: Color.fromARGB(255, 216, 67, 76),
    onError: Colors.white,
    background: Color.fromARGB(255, 1, 97, 71),
    onBackground: Colors.white,
    surface: Color.fromARGB(255, 255, 206, 21),
    onSurface: Colors.white);

ThemeData defaultTheme = ThemeData(
  colorScheme:
      ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 1, 97, 71)),
  textTheme: GoogleFonts.poppinsTextTheme(Typography.whiteCupertino),
  useMaterial3: true,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Togo culture',
      theme: defaultTheme,
      home: const HomePage(),
    );
  }
}
