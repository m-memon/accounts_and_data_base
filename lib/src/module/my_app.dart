import "package:flutter/material.dart";
import "dart:io";
import "dart:convert";
import "/src/screens/create_main_admin_screen.dart";
import "/src/screens/first_create_admin_screen.dart";
import "/src/screens/login_screen.dart";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // initialize Admin DataBase Variable
    File mainAdminsFile = File("database/admins/main_admin.json");
    File adminsFile = File("database/admins/user_admin.json");

    // Read Main Admin DataBase
    Map<String, String> mainAdmin =
        jsonDecode(mainAdminsFile.readAsStringSync());

    // Decide Whether Or Not To Create A New Admin Or Main Admin
    if (mainAdmin["Name"] == " ") {
      return const CreateMainAdminScreen();
    } else if (adminsFile.readAsStringSync() == "") {
      return const FirstCreateAdminScreen();
    } else {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Login Screen",
        home: LogInScreen(),
      );
    }
  }
}
