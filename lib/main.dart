import 'package:didpoolfit/modules/auth/register/register_page.dart';
import 'package:didpoolfit/modules/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: "Poppins",
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w700,
          ),
          titleMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          titleSmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          labelMedium: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
          labelSmall: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      routes: {
        "/welcome":(context) => const WelcomePage(),
        "/register":(context) => const RegisterPage(),
      },
      initialRoute: "/welcome",
    );
  }
}
