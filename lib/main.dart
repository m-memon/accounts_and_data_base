import "package:flutter/material.dart";
import "dart:io";
import "dart:convert";
import "/src/screens/create_main_admin_screen.dart";
import 'src/screens/first_create_admin_screen.dart';
import "/src/screens/login_screen.dart";

bool mainAdminBool = false;
void main() {
  // Default Value For Main Admin Map
  Map<String, String> data = {"Name": "", "Password": ""};

  // initialize Admin DataBase Variable
  File mainAdminsFile = File("database/admins/main_admin.json");
  File adminsFile = File("database/admins/user_admin.json");

  // Check If Admin DataBase Exists
  if (!mainAdminsFile.existsSync()) {
    mainAdminsFile.createSync(recursive: true);
    mainAdminsFile.writeAsStringSync(jsonEncode(data));
    adminsFile.createSync(recursive: true);
  } else if (!adminsFile.existsSync()) {
    adminsFile.createSync(recursive: true);
  } else {}

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // initialize Admin DataBase Variable
    File mainAdminsFile = File("database/admins/main_admin.json");
    File adminsFile = File("database/admins/user_admin.json");

    // Read Main Admin DataBase
    Map mainAdmin = jsonDecode(mainAdminsFile.readAsStringSync());

    // Decide Whether Or Not To Create A New Admin Or Main Admin
    if (mainAdmin["Name"] == "") {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CreateMainAdminScreen(),
      );
    } else if (adminsFile.readAsStringSync() == "") {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstCreateAdminScreen(),
      );
    } else {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LogInScreen(),
      );
    }
  }
}
