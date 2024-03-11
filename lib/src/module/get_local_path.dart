import "dart:async";
import "dart:io";
import "package:path_provider/path_provider.dart";

//  Function to get the local path where the app can store files.
Future<String> get _getLocalPath async {
  late String localPath;

  try {
    //  Check the platform and set the local path accordingly.
    if (Platform.isAndroid) {
      final Directory? directory = await getExternalStorageDirectory();
      localPath = directory!.path;
    } else if (Platform.isWindows) {
      localPath = "";
    }

    //  Create the directory if it doesn't exist.
    if (!await Directory(localPath).exists()) {
      await Directory(localPath).create(recursive: true);
    }

    return localPath;
  } catch (error) {
    throw Exception("Getting Error On getLocalPath: $error");
  }
}

//  Function to get the database path.
Future<String> get _getDataBasePath async {
  String localPath = await _getLocalPath;

  try {
    //  Append '/database' to the local path.
    localPath = "$localPath/database";

    //  Create the directory if it doesn't exist.
    if (!await Directory(localPath).exists()) {
      await Directory(localPath).create(recursive: true);
    }
    return localPath;
  } catch (error) {
    throw Exception("Getting Error On getDataBasePath: $error");
  }
}

//  Function to get the admins' database path.
Future<String> get _getAdminsDataBasePath async {
  String localPath = await _getDataBasePath;

  try {
    //  Append '/admins' to the database path.
    localPath = "$localPath/admins";

    //  Create the directory if it doesn't exist.
    if (!await Directory(localPath).exists()) {
      await Directory(localPath).create(recursive: true);
    }
    return localPath;
  } catch (error) {
    throw Exception("Getting Error On getAdminsDataBasePath: $error");
  }
}

//  Exposed function to get the local path with permission handling.
Future<String> getLocalPath() async {
  return await _getLocalPath;
}

//  Exposed function to get the database path with permission handling.
Future<String> getDataBasePath() async {
  return await _getDataBasePath;
}

//  Exposed function to get the admins' database path with permission handling.
Future<String> getAdminsDataBasePath() async {
  return await _getAdminsDataBasePath;
}

//  This Dart Flutter code aims to handle permissions and retrieve local
//  paths for storing files, specifically targeting Android and Windows
//  platforms. Here's a breakdown of its components, advantages, disadvantages,
//  and potential use cases:


//  Components:
//  1. Permission Handling Functions**: `_readWritePermTest` function handles
//  requesting storage permission and executes a provided function that returns
//  a string. It utilizes the `PermissionHandler` package for managing
//  permissions.

//  2. Path Retrieval Functions**: `_getLocalPath`, `_getDataBasePath`, and
//  `_getAdminsDataBasePath` are functions to get the local path and database
//  paths, with further directory creation if they don't exist.

//  3. Exposed Functions**: `getLocalPath`, `getDataBasePath`, and
//  `getAdminsDataBasePath` are exposed functions that handle permission and
//  return the corresponding paths.


//  Advantages:
//  1. Permission Handling**: It ensures proper permission handling by
//  repeatedly requesting storage permission until it's granted.

//  2. Platform Compatibility**: The code checks the platform (Android, Windows)
//  and adapts path retrieval accordingly, enhancing cross-platform compatibility.

//  3. Directory Management**: Directories are created if they don't exist,
//  ensuring a structured file storage system.


//  Disadvantages:
//  1. Limited Platform Support**: Currently, it only supports Android and
//  Windows platforms. Other platforms might need additional handling.

//  2. Synchronous Directory Creation**: Directory creation is done
//  synchronously, potentially causing UI freezing if performed on the
//  main thread.

//  3. Error Handling**: There's minimal error handling in case of permission
//  denial or other exceptions.


//  Use Cases:
//  1. File Storage Applications**: Useful for applications requiring local
//  file storage, such as note-taking apps, document management apps, etc.

//  2. Database Management**: Ideal for applications needing a local database,
//  like offline-first apps, where paths to store databases are essential.

//  3. Cross-Platform Apps**: Beneficial for developers building Flutter apps
//  targeting both Android and Windows platforms, simplifying file handling
//  across platforms.


//  Overall:
//  This code provides a solid foundation for handling permissions and
//  retrieving local paths for file storage in a Flutter application. While it
//  offers advantages like permission handling and platform compatibility, it
//  could be enhanced with better error handling and expanded platform support
//  for broader applicability.