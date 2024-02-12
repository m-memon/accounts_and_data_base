import 'package:flutter/material.dart';
import 'package:accounts_and_data_base/screens/portrait/create_main_admin_screen.dart';
import 'package:accounts_and_data_base/screens/landscape/create_main_admin_screen.dart';
import 'package:accounts_and_data_base/screens/square/create_main_admin_screen.dart';

class CreateMainAdminScreen extends StatefulWidget {
  const CreateMainAdminScreen({super.key});

  @override
  State<CreateMainAdminScreen> createState() => _CreateMainAdminScreenState();
}

class _CreateMainAdminScreenState extends State<CreateMainAdminScreen> {
  @override
  Widget build(BuildContext context) {
    double scnW = MediaQuery.of(context).size.width;
    double scnH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: scnH > scnW
          ? PortraitCreateMainAdminScreen()
          : scnH < scnW
              ? LandscapeCreateMainAdminScreen()
              : SquareCreateMainAdminScreen(),
    );
  }
}
