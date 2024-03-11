// Importing necessary Dart libraries
import "dart:async";
import "dart:io";
import "dart:convert";
import "required_permissions.dart";
import "get_local_path.dart";

Future<void> _initializeVoidMain() async {
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
    // isError = true;
    // isLoading = false;
  } finally {
    // isError = false;
    // isLoading = false;
  }
}

// Function to create a file
Future<void> _createTheFile(File file) async {
  try {
    // Checking if the file exists, if not create it
    file = await new File(file.path).create();
  } catch (error) {
    // Handling errors
    throw Exception("Getting Error On createFile: $error");
  }
}

// Function to overwrite contents in a file
Future<void> _overWriteInTheFile(File file, var contents) async {
  try {
    // Create the file if it doesn't exist
    await _createTheFile(file);
    // Write contents to the file
    await file.writeAsString(contents);
  } catch (error) {
    // Handling errors
    throw Exception("Getting Error On overWriteInTheFile: $error");
  }
}

// Function to read contents from a file
Future<String> _readInTheFile(File file) async {
  try {
    // Checking if the file exists
    if (await file.exists()) {
      // Read contents from the file
      return await file.readAsString();
    } else {
      // Return an empty string if file doesn't exist
      return "";
    }
  } catch (error) {
    // Handling errors
    throw Exception("Getting Error On readInTheFile: $error");
  }
}

// Function to update contents in a file
Future<void> _updateInTheFile(File file, var contents) async {
  try {
    // Checking if the file exists
    if (await file.exists()) {
      // Append contents to the file
      await file.writeAsString("\n$contents", mode: FileMode.append);
    } else {
      _overWriteInTheFile(file, contents);
    }
  } catch (error) {
    // Handling errors
    throw Exception("Getting Error On updateInTheFile: $error");
  }
}

// Function to delete a file
Future<void> _deleteTheFile(File file) async {
  try {
    // Checking if the file exists
    if (await file.exists()) {
      // Delete the file
      await file.delete(recursive: true);
    }
  } catch (error) {
    // Handling errors
    throw Exception("Getting Error On deleteTheFile: $error");
  }
}

// Function to read JSON data from a file and parse it into a Map
Future<Map<String, dynamic>> _readJsonMap(File file) async {
  try {
    Map<String, String> map = {};
    // Checking if the file exists
    if (await file.exists()) {
      // Read JSON data from the file and decode it into a Map
      map = await jsonDecode(await file.readAsString());
    }
    return map;
  } catch (error) {
    // Handling errors
    throw Exception("Getting Error On readJsonMap: $error");
  }
}

// Function to overwrite JSON data in a file
Future<void> _overWriteJsonMap(File file, Map map) async {
  try {
    // Checking if the file exists
    if (await file.exists()) {
      // Write JSON-encoded Map to the file
      await file.writeAsString(jsonEncode(map));
    } else {
      // Create the file if it doesn't exist and write JSON-encoded Map to it
      await _createTheFile(file);
      await file.writeAsString(jsonEncode(map));
    }
  } catch (error) {
    // Handling errors
    throw Exception("Getting Error On overWriteJsonMap: $error");
  }
}

// Function to update JSON contents in a file
Future<void> _updateJsonData(File file, var contents) async {
  try {
    // Checking if the file exists
    if (await file.exists()) {
      // Append contents to a file asynchronously using Dart's file I/O in Flutter.
      await file.writeAsString("\n${jsonEncode(contents)}",
          mode: FileMode.append);
    } else {
      // Create the file if it doesn't exist and write JSON-encoded content to it
      await _createTheFile(file);
      await file.writeAsString(jsonEncode(contents));
    }
  } catch (error) {
    // Handling errors
    throw Exception("Getting Error On updateJsonData: $error");
  }
}

// Public functions with permission checks to perform various file operations

// Function to create a file
Future<void> createTheFile(File file) async {
  await _createTheFile(file);
}

// Function to overwrite contents in a file
Future<void> overWriteInTheFile(File file, var contents) async {
  await _overWriteInTheFile(file, contents);
}

// Function to read contents from a file
Future<String> readInTheFile(File file) async {
  return await _readInTheFile(file);
}

// Function to update contents in a file
Future<void> updateInTheFile(File file, var contents) async {
  await _updateInTheFile(file, contents);
}

// Function to delete a file
Future<void> deleteTheFile(File file) async {
  await _deleteTheFile(file);
}

// Function to read JSON Map from a file and parse it into a Map
Future<Map<String, dynamic>> readJsonMap(File file) async {
  return await _readJsonMap(file);
}

// Function to overwrite JSON data in a file
Future<void> overWriteJsonMap(File file, Map map) async {
  await _overWriteJsonMap(file, map);
}

// Function to update JSON data in a file
Future<void> updateJsonData(File file, var contents) async {
  await _updateJsonData(file, contents);
}

//   Description:
//  This Dart code is a set of functions designed to handle file operations such
//  as creating, reading, updating, and deleting files, with a focus on managing
//  permissions, particularly on Android and Windows platforms. It employs
//  Dart's asynchronous programming features and utilizes the `dart:io` library
//  for file I/O operations and `dart:convert` for encoding and decoding JSON
//  data. Additionally, it leverages the `permission_handler` package to handle
//  permissions on Android.


//   Advantages:
//  1. Platform Compatibility: The code is designed to work across multiple
//    platforms, with specific handling for Android and Windows platforms. This
//    enhances the versatility of the codebase.
  
//  2. Permission Management: It provides a mechanism for handling permissions
//    seamlessly, ensuring that the necessary permissions are obtained before
//    performing file operations. This improves the reliability and security of
//    file operations, especially on Android devices.

//  3. Asynchronous Operations: Utilizing Dart's asynchronous programming
//    features (`Future` and `async/await`), the code allows for non-blocking
//    execution of file operations. This ensures that the application remains
//    responsive during file I/O tasks, enhancing overall user experience.

//  4. Error Handling: The code includes error handling mechanisms, catching and
//    throwing exceptions when encountering errors during file operations. This
//    promotes robustness and reliability by providing feedback in case of
//    failures.


//   Disadvantages:
//  1. Limited Platform Coverage: Although the code supports Android and Windows
//    platforms explicitly, it may not cover all possible platforms. Additional
//    platform-specific implementations might be required for broader
//    compatibility.

//  2. Dependency on External Package: The code relies on the
//    `permission_handler` package for handling permissions, which introduces a
//    dependency. Dependency management and potential compatibility issues with
//    future versions of the package could arise.

//  3. Potential Performance Overhead: The code's use of asynchronous operations
//    may introduce overhead, especially for small-scale applications or tasks
//    with minimal concurrency requirements. Careful consideration should be
//    given to performance implications, particularly in performance-critical
//    scenarios.

//   Overall:
//  Overall, this Dart code provides a robust and platform-aware solution for
//  performing file operations within a Flutter or Dart application. By
//  integrating permission handling and error management, it ensures smooth and
//  secure file manipulation, contributing to the reliability and usability of
//  the application. However, developers should remain vigilant regarding
//  platform-specific nuances and potential performance considerations.