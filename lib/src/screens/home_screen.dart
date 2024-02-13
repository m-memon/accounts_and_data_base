import "package:flutter/material.dart";
import "/src/screens/portrait/home_screen.dart";
import "/src/screens/landscape/home_screen.dart";
import "/src/screens/square/home_screen.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double scnW = MediaQuery.of(context).size.width;
    double scnH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: scnH > scnW
          ? PortraitHomeScreen()
          : scnH < scnW
              ? LandscapeHomeScreen()
              : SquareHomeScreen(),
    );
  }
}