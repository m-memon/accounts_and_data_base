import "package:flutter/material.dart";
import "/src/screens/portrait/create_admin_screen.dart";
import "/src/screens/landscape/create_admin_screen.dart";
import "/src/screens/square/create_admin_screen.dart";

class CreateAdminScreen extends StatefulWidget {
  const CreateAdminScreen({super.key});

  @override
  State<CreateAdminScreen> createState() => _CreateAdminScreenState();
}

class _CreateAdminScreenState extends State<CreateAdminScreen> {
  @override
  Widget build(BuildContext context) {
    double scnW = MediaQuery.of(context).size.width;
    double scnH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: scnH > scnW
          ? PortraitCreateAdminScreen()
          : scnH < scnW
              ? LandscapeCreateAdminScreen()
              : SquareCreateAdminScreen(),
    );
  }
}