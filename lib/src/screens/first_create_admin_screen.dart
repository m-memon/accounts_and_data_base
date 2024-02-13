import "package:flutter/material.dart";
import "/src/screens/portrait/first_create_admin_screen.dart";
import "/src/screens/landscape/first_create_admin_screen.dart";
import "/src/screens/square/first_create_admin_screen.dart";

class FirstCreateAdminScreen extends StatefulWidget {
  const FirstCreateAdminScreen({super.key});

  @override
  State<FirstCreateAdminScreen> createState() => _FirstCreateAdminScreenState();
}

class _FirstCreateAdminScreenState extends State<FirstCreateAdminScreen> {
  @override
  Widget build(BuildContext context) {
    double scnW = MediaQuery.of(context).size.width;
    double scnH = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Very Second Screen",
      home: Scaffold(
        body: Container(
          color: Colors.blueAccent,
        ),
        // body: scnH > scnW
        //     ? PortraitFirstCreateAdminScreen()
        //     : scnH < scnW
        //         ? LandscapeFirstCreateAdminScreen()
        //         : SquareFirstCreateAdminScreen(),
      ),
    );
  }
}