import 'package:believers_beacon/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Believer's Beacon",
        debugShowCheckedModeBanner: false,
        home: const LoginPage(),
        theme: ThemeData(
            fontFamily: 'Poppins',
            primaryColor: const Color(0xFF39A7FF),
            colorScheme: const ColorScheme.light(secondary: Color(0xFFFAD19F)),
            scaffoldBackgroundColor: const Color(0xFFF1F2F3),
            inputDecorationTheme: const InputDecorationTheme(
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFA8A7A7),
                ),
              ),
            ),
            checkboxTheme: CheckboxThemeData(
              fillColor: MaterialStateColor.resolveWith(
                (states) => states.contains(MaterialState.selected)
                    ? const Color(
                        0xFF39A7FF) // Change this to your desired border color
                    : Colors.transparent,
              ),
            ),
            textSelectionTheme: const TextSelectionThemeData(
                cursorColor: Color(0xFF39A7FF),
                selectionHandleColor: Color(0xFF39A7FF)),
            textTheme: TextTheme(
                titleMedium: GoogleFonts.poppins(
                    fontSize: 24,
                    textStyle: const TextStyle(color: Color(0xFF4A4A4A))),
                bodyMedium: GoogleFonts.poppins(
                    fontSize: 13,
                    textStyle: const TextStyle(color: Color(0xFF4A4A4A))))));
  }
}
