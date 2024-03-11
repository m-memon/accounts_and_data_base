import "package:accounts_and_data_base/src/module/read_write_data.dart";
import "package:flutter/material.dart";
import "dart:async";
import "dart:io";
import "/src/module/get_local_path.dart";
import "/src/screens/create_main_admin_screen.dart";
import "/src/screens/first_create_admin_screen.dart";
import "/src/screens/login_screen.dart";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoading = true;
  bool isError = false;
  Widget? initialScreen;
  String error = "";
  @override
  void initState() {
    super.initState();
    initializeApp();
  }

  Future<void> initializeApp() async {
    try {
      // initialize Admin DataBase Variable
      final Future<String> localPath = getAdminsDataBasePath();
      File mainAdminsFile = await File("${await localPath}/main_admin.json");
      File adminsFile = await File("${await localPath}/user_admin.json");
      Map<String, dynamic> mainAdmin = await readJsonMap(mainAdminsFile);
      Future<String> userAdmin = readInTheFile(adminsFile);
      // Decide Whether Or Not To Create A New Admin Or Main Admin
      print("Local Path: ${await localPath}");
      print(
          "Do Main Admins Path Exist: ${await Directory(await localPath).exists()}");
      print("Do Main Admins File Exist: ${await mainAdminsFile.exists()}");
      if (mainAdmin["Name"] == "Empty" && mainAdmin["Password"] == "Empty") {
        initialScreen = const CreateMainAdminScreen();
      } else if (await userAdmin == "Empty") {
        initialScreen = const FirstCreateAdminScreen();
      } else {
        initialScreen = const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Login Screen",
          home: LogInScreen(),
        );
      }
    } catch (e) {
      // Handle errors gracefully
      setState(() {
        isError = true;
        isLoading = false;
        error = e.toString();
      });
    } finally {
      setState(() {
        isLoading = false;
        isError = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      print("MyApp Is Loading");
      return const MaterialApp(
        home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    } else if (isError) {
      print("MyApp Is Getting Error");
      return MaterialApp(
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
      print("MyApp Loading Is Completed");
      return initialScreen ??
          const MaterialApp(
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
    }
  }
}
