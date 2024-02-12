import "package:flutter/material.dart";
import "dart:io";
import "dart:convert";
import "package:accounts_and_data_base/screens/create_main_admin_screen.dart";
import "package:accounts_and_data_base/screens/create_admin_screen.dart";
import "package:accounts_and_data_base/screens/login_screen.dart";

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

  // Read Main Admin DataBase
  Map mainAdmin = jsonDecode(mainAdminsFile.readAsStringSync());

  // Decide Whether Or Not To Create A New Admin Or Main Admin
  if (mainAdmin["Name"] == "") {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CreateMainAdminScreen(),
      ),
    );
  } else if (adminsFile.readAsStringSync() == "") {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CreateAdminScreen(),
      ),
    );
  } else {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LogInScreen(),
      ),
    );
  }
}
