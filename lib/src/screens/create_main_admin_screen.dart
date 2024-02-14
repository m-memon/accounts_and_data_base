import "package:flutter/material.dart";
import "portrait/create_main_admin_screen.dart";
import "landscape/create_main_admin_screen.dart";
import "square/create_main_admin_screen.dart";
import "/src/module/password.dart";

class CreateMainAdminScreen extends StatefulWidget {
  const CreateMainAdminScreen({super.key});

  @override
  State<CreateMainAdminScreen> createState() => _CreateMainAdminScreenState();
}

class _CreateMainAdminScreenState extends State<CreateMainAdminScreen> {
  late final FocusNode _userNameFocusNode;
  late final TextEditingController _userNameController;
  late final FocusNode _pswdFocusNode;
  late final TextEditingController _pswdController;
  late bool _userNameBool;
  late bool _pswdBool;
  late bool _pswdVisible;
  late DecidePasswordStrength _passwordStrengthIndicator;
  late BuildContext contextOfWidget;

  myFunction() {
    _userNameFocusNode.addListener(() {
      setState(() {
        if (_userNameFocusNode.hasFocus) {
          _userNameBool = true;
        } else if (!_userNameFocusNode.hasFocus) {
          _userNameBool = false;
        }
      });
    });
    _pswdFocusNode.addListener(() {
      setState(() {
        if (_pswdFocusNode.hasFocus) {
          _pswdBool = true;
        } else if (!_pswdFocusNode.hasFocus) {
          _pswdBool = false;
        }
      });
    });
    _pswdController.addListener(() {
      setState(() {
        _passwordStrengthIndicator.detectPasswordStrength(_pswdController.text);
      });
    });
  }

  // Method to update pswdVisible from child
  void updatePswdVisible(bool newValue) {
    setState(() {
      _pswdVisible = newValue;
    });
  }

  void createAccountOnPressed(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const CreateMainAdminConfirmPasswordScreen(
                // map: Map(),
                )));
  }

  @override
  void initState() {
    super.initState();
    _userNameFocusNode = FocusNode();
    _userNameController = TextEditingController();
    _pswdFocusNode = FocusNode();
    _pswdController = TextEditingController();
    _userNameBool = false;
    _pswdBool = false;
    _pswdVisible = true;
    _passwordStrengthIndicator = DecidePasswordStrength();
  }

  @override
  void dispose() {
    super.dispose();
    _userNameFocusNode.dispose();
    _userNameController.dispose();
    _pswdFocusNode.dispose();
    _pswdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    myFunction(); // Call myFunction() here to ensure it is executed on each rebuild
    double scnW = MediaQuery.of(context).size.width;
    double scnH = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Very First Screen",
      home: Scaffold(
        body: scnH > scnW
            ? PortraitCreateMainAdminScreen(
                userNameFocusNode: _userNameFocusNode,
                userNameController: _userNameController,
                pswdFocusNode: _pswdFocusNode,
                pswdController: _pswdController,
                userNameBool: _userNameBool,
                pswdBool: _pswdBool,
                pswdVisible: _pswdVisible,
                onUpdatePswdVisible: updatePswdVisible,
                passwordStrengthIndicator: _passwordStrengthIndicator,
                createAccountOnPressed: createAccountOnPressed,
              )
            : scnH < scnW
                ? LandscapeCreateMainAdminScreen(
                    userNameFocusNode: _userNameFocusNode,
                    userNameController: _userNameController,
                    pswdFocusNode: _pswdFocusNode,
                    pswdController: _pswdController,
                    userNameBool: _userNameBool,
                    pswdBool: _pswdBool,
                    pswdVisible: _pswdVisible,
                    onUpdatePswdVisible: updatePswdVisible,
                    passwordStrengthIndicator: _passwordStrengthIndicator,
                    createAccountOnPressed: createAccountOnPressed,
                  )
                : SquareCreateMainAdminScreen(
                    userNameFocusNode: _userNameFocusNode,
                    userNameController: _userNameController,
                    pswdFocusNode: _pswdFocusNode,
                    pswdController: _pswdController,
                    userNameBool: _userNameBool,
                    pswdBool: _pswdBool,
                    pswdVisible: _pswdVisible,
                    onUpdatePswdVisible: updatePswdVisible,
                    passwordStrengthIndicator: _passwordStrengthIndicator,
                    createAccountOnPressed: createAccountOnPressed,
                  ),
      ),
    );
  }
}

class CreateMainAdminConfirmPasswordScreen extends StatefulWidget {
  // final Map<String, dynamic> map;
  // const CreateMainAdminConfirmPasswordScreen({
  //   Key? key, required this.map,
  // }) : super(key: key);
  const CreateMainAdminConfirmPasswordScreen({super.key});

  @override
  State<CreateMainAdminConfirmPasswordScreen> createState() =>
      _CreateMainAdminConfirmPasswordScreenState();
}

class _CreateMainAdminConfirmPasswordScreenState
    extends State<CreateMainAdminConfirmPasswordScreen> {
  late final FocusNode _pswdFocusNode;
  late final TextEditingController _pswdController;
  late bool _pswdBool;
  late bool _pswdVisible;
  late DecidePasswordStrength _passwordStrengthIndicator;

  myFunction() {
    _pswdFocusNode.addListener(() {
      setState(() {
        if (_pswdFocusNode.hasFocus) {
          _pswdBool = true;
        } else if (!_pswdFocusNode.hasFocus) {
          _pswdBool = false;
        }
      });
    });
    _pswdController.addListener(() {
      setState(() {
        _passwordStrengthIndicator.detectPasswordStrength(_pswdController.text);
      });
    });
  }

  // Method to update pswdVisible from child
  void updatePswdVisible(bool newValue) {
    setState(() {
      _pswdVisible = newValue;
    });
  }

  void passwordConfirmOnPressed(BuildContext context) {}

  void returnBackScreenOnPressed(BuildContext context) {}

  @override
  void initState() {
    super.initState();
    _pswdFocusNode = FocusNode();
    _pswdController = TextEditingController();
    _pswdBool = false;
    _pswdVisible = true;
    _passwordStrengthIndicator = DecidePasswordStrength();
  }

  @override
  void dispose() {
    super.dispose();
    _pswdFocusNode.dispose();
    _pswdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    myFunction(); // Call myFunction() here to ensure it is executed on each rebuild
    double scnW = MediaQuery.of(context).size.width;
    double scnH = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Very First Confirm Password Screen",
      home: Scaffold(
        body: scnH > scnW
            ? PortraitCreateMainAdminConfirmPasswordScreen(
                pswdFocusNode: _pswdFocusNode,
                pswdController: _pswdController,
                pswdBool: _pswdBool,
                pswdVisible: _pswdVisible,
                onUpdatePswdVisible: updatePswdVisible,
                passwordStrengthIndicator: _passwordStrengthIndicator,
                passwordConfirmOnPressed: passwordConfirmOnPressed,
                returnBackScreenOnPressed: returnBackScreenOnPressed,
              )
            : scnH < scnW
                ? LandscapeCreateMainAdminConfirmPasswordScreen(
                    pswdFocusNode: _pswdFocusNode,
                    pswdController: _pswdController,
                    pswdBool: _pswdBool,
                    pswdVisible: _pswdVisible,
                    onUpdatePswdVisible: updatePswdVisible,
                    passwordStrengthIndicator: _passwordStrengthIndicator,
                    passwordConfirmOnPressed: passwordConfirmOnPressed,
                    returnBackScreenOnPressed: returnBackScreenOnPressed,
                  )
                : SquareCreateMainAdminConfirmPasswordScreen(
                    pswdFocusNode: _pswdFocusNode,
                    pswdController: _pswdController,
                    pswdBool: _pswdBool,
                    pswdVisible: _pswdVisible,
                    onUpdatePswdVisible: updatePswdVisible,
                    passwordStrengthIndicator: _passwordStrengthIndicator,
                    passwordConfirmOnPressed: passwordConfirmOnPressed,
                    returnBackScreenOnPressed: returnBackScreenOnPressed,
                  ),
      ),
    );
  }
}

// This Flutter Dart code defines a CreateMainAdminScreen widget,
// which is a stateful widget that displays a user interface for creating
// a main admin account. The screen contains input fields for username and
// password, with dynamic visibility toggling for the password field.
// It also includes a method for detecting password strength. The layout
// adapts based on the device orientation, rendering different versions of
// the screen for portrait, landscape, and square orientations. The widget
// utilizes other custom widget files (PortraitCreateMainAdminScreen,
// LandscapeCreateMainAdminScreen, SquareCreateMainAdminScreen) for the
// respective orientations, passing necessary parameters to each.