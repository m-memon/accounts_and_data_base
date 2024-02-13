import "package:flutter/material.dart";
import "dart:io";
import "dart:convert";
import "src/module/my_app.dart";

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