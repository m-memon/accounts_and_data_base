import "package:flutter/material.dart";
import "dart:async";
import "dart:convert";
import "dart:io";
import "src/module/get_local_path.dart";
import "src/module/read_write_data.dart";
import "src/module/required_permissions.dart";
import "src/module/my_app.dart";

bool mainAdminBool = false;

class _TempClass {
  bool isLoading = true;
  bool isError = false;
  late Widget initialScreen;
  String error = "";

  Future<void> initializeApp() async {
    try {
      // Default Value For Main Admin Map
      Map<String, dynamic> mainAdminsMap = {
        "Name": "Empty",
        "Password": "Empty",
        "MainAdmin": false
      };
      String mainAdminsJsonMap = jsonEncode(mainAdminsMap);
      // Default Value For Users Admin Map
      List<Map<String, dynamic>> userAdminsMapList = [
        {"Name": "Empty", "Password": "Empty"}
      ];
      String userAdminsJsonMapList = jsonEncode(userAdminsMapList);
      final Future<String> localPath =
          await readWritePermTest(getAdminsDataBasePath());
      if (!(await File("${await localPath}/main_admin.json").exists())) {
        File("${await localPath}/main_admin.json")
            .writeAsString(jsonEncode(mainAdminsJsonMap));
        File("${await localPath}/user_admin.json")
            .writeAsString(jsonEncode(userAdminsJsonMapList));
      } else if (!(await File("${await localPath}/user_admin.json").exists())) {
        File("${await localPath}/user_admin.json")
            .writeAsString(jsonEncode(userAdminsJsonMapList));
      } else {}
    } catch (error) {
      print("Getting Error initializeVoidMain: $error");
      isError = true;
      isLoading = false;
    } finally {
      isError = false;
      isLoading = false;
    }
    if (isLoading) {
      print("Main Void Is Loading");
      initialScreen = const MaterialApp(
        home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    } else if (isError) {
      print("Main Void Is Getting Error");
      initialScreen = MaterialApp(
        home: Scaffold(
          body: Container(
            color: Colors.red,
            child: Center(
              child: Text(
                // "An error occurred. Please try again later.",
                error,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      print("Main Void Loading Is Completed");
      initialScreen = const MyApp();
    }
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _TempClass temp = _TempClass();
  await temp.initializeApp();
  runApp(
    temp.initialScreen,
  );
}
