import "package:flutter/material.dart";
import "/src/screens/portrait/login_screen.dart";
import "/src/screens/landscape/login_screen.dart";
import "/src/screens/square/login_screen.dart";

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Screen",
      home: Scaffold(
        body: Container(
          color: Colors.amberAccent,
        ),
        // body: scnH > scnW
        //     ? PortraitLogInScreen()
        //     : scnH < scnW
        //         ? LandscapeLogInScreen()
        //         : SquareLogInScreen(),
      ),
    );
  }
}