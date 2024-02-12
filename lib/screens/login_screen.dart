import "package:flutter/material.dart";
import "package:accounts_and_data_base/screens/portrait/login_screen.dart";
import "package:accounts_and_data_base/screens/landscape/login_screen.dart";
import "package:accounts_and_data_base/screens/square/login_screen.dart";

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    double scnW = MediaQuery.of(context).size.width;
    double scnH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: scnH > scnW
          ? PortraitLogInScreen()
          : scnH < scnW
              ? LandscapeLogInScreen()
              : SquareLogInScreen(),
    );
  }
}