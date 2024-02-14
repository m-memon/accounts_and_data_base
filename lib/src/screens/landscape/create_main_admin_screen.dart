import "package:flutter/material.dart";
import "/src/module/password.dart";

class LandscapeCreateMainAdminScreen extends StatefulWidget {
  final FocusNode userNameFocusNode;
  final TextEditingController userNameController;
  final bool userNameBool;
  final FocusNode pswdFocusNode;
  final TextEditingController pswdController;
  final bool pswdBool;
  final bool pswdVisible;
  final Function(bool) onUpdatePswdVisible;
  final DecidePasswordStrength passwordStrengthIndicator;
  final Function(BuildContext context) createAccountOnPressed;
  const LandscapeCreateMainAdminScreen({
    Key? key,
    required this.userNameFocusNode,
    required this.userNameController,
    required this.pswdFocusNode,
    required this.pswdController,
    required this.userNameBool,
    required this.pswdBool,
    required this.pswdVisible,
    required this.onUpdatePswdVisible,
    required this.passwordStrengthIndicator,
    required this.createAccountOnPressed,
  }) : super(key: key);
  @override
  State<LandscapeCreateMainAdminScreen> createState() =>
      _LandscapeCreateMainAdminScreenState();
}

class _LandscapeCreateMainAdminScreenState
    extends State<LandscapeCreateMainAdminScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double scnW = MediaQuery.of(context).size.width / 1000;
    double scnH = MediaQuery.of(context).size.height / 1000;
    return Container(
      width: scnW * 1000,
      height: scnH * 1000,
      color: Colors.black38,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "AccuManage",
            style: TextStyle(
              color: Colors.blue,
              fontSize: scnH * 100,
              fontWeight: FontWeight.bold,
              inherit: true,
            ),
          ),
          SizedBox(
            height: scnH * 50,
          ),
          Container(
            width: scnW * 600,
            height: scnW * 100,
            color: Colors.transparent,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                AnimatedPositioned(
                  duration: const Duration(microseconds: 200),
                  curve: Curves.ease,
                  top: widget.userNameBool ? scnH * 0 : scnH * 5,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                    width: widget.userNameBool ? scnW * 600 : scnW * 300,
                    height: widget.userNameBool ? scnH * 45 : scnH * 40,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(widget.userNameBool ? 30 : 5),
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: widget.userNameBool ? scnW * 60 : scnW * 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    widget.userNameBool ? 30 : 5),
                                bottomLeft: Radius.circular(
                                    widget.userNameBool ? 30 : 5),
                                topRight: Radius.zero,
                                bottomRight: Radius.zero,
                              ),
                            ),
                            child: Icon(
                              Icons.person,
                              color: widget.userNameBool
                                  ? Colors.deepPurple.shade400
                                  : Colors.deepPurple.shade200,
                              size: scnH * 30,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: widget.userNameController,
                              focusNode: widget.userNameFocusNode,
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                hintText: "Username",
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.zero,
                                    bottomLeft: Radius.zero,
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.black26,
                                    width: scnH,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.zero,
                                    bottomLeft: Radius.zero,
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.deepPurple.shade400,
                                    width: scnH * 2.75,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontSize:
                                    widget.userNameBool ? scnH * 20 : scnH * 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(microseconds: 200),
                  curve: Curves.ease,
                  top: widget.pswdBool ? scnH * 65 : scnH * 70,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                    width: widget.pswdBool ? scnW * 600 : scnW * 300,
                    height: widget.pswdBool ? scnH * 45 : scnH * 40,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(widget.pswdBool ? 30 : 5),
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: widget.pswdBool ? scnW * 60 : scnW * 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(widget.pswdBool ? 30 : 5),
                                bottomLeft:
                                    Radius.circular(widget.pswdBool ? 30 : 5),
                                topRight: Radius.zero,
                                bottomRight: Radius.zero,
                              ),
                            ),
                            child: Icon(
                              Icons.lock_open_sharp,
                              color: widget.pswdBool
                                  ? Colors.deepPurple.shade400
                                  : Colors.deepPurple.shade200,
                              size: scnH * 30,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: widget.pswdController,
                              textAlignVertical: TextAlignVertical.bottom,
                              focusNode: widget.pswdFocusNode,
                              obscureText: widget.pswdVisible,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    widget.onUpdatePswdVisible(
                                        !widget.pswdVisible);
                                  },
                                  icon: Icon(
                                    widget.pswdVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: scnH * 20,
                                    color: widget.pswdBool
                                        ? Colors.deepPurple.shade400
                                        : Colors.deepPurple.shade200,
                                  ),
                                ),
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.zero,
                                    bottomLeft: Radius.zero,
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.black26,
                                    width: scnH,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.zero,
                                    bottomLeft: Radius.zero,
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.deepPurple.shade400,
                                    width: scnH * 2.75,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontSize:
                                    widget.pswdBool ? scnH * 20 : scnH * 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(microseconds: 250),
                  curve: Curves.ease,
                  top: scnH * 109,
                  left: widget.pswdBool ? scnW * 61 : scnW * 186,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.ease,
                    width: widget.pswdBool ? scnW * 529 : scnW * 259,
                    height: scnH * 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: widget.pswdBool
                          ? widget.passwordStrengthIndicator.backgroundColors
                          : Colors.transparent,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                    child: Text(
                      widget.pswdBool
                          ? widget.passwordStrengthIndicator.passwordComments
                          : "",
                      style: TextStyle(
                        color: widget.pswdBool
                            ? widget.passwordStrengthIndicator.fontColors
                            : Colors.transparent,
                        fontSize: scnH * 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: scnW * 250,
            height: scnH * 80,
            child: MaterialButton(
              animationDuration: const Duration(milliseconds: 250),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.blue,
              elevation: 10,
              onPressed: () => widget.createAccountOnPressed(context),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Positioned(
                    left: scnW * 20,
                    child: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: scnH * 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    right: scnW * -0,
                    child: Container(
                      width: scnW * 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.blue,
                        size: scnH * 55,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "Create main admin account",
            style: TextStyle(
              color: Colors.blue,
              fontSize: scnH * 30,
              fontWeight: FontWeight.bold,
              inherit: true,
            ),
          ),
        ],
      ),
    );
  }
}

class LandscapeCreateMainAdminConfirmPasswordScreen extends StatefulWidget {
  final FocusNode pswdFocusNode;
  final TextEditingController pswdController;
  final bool pswdBool;
  final bool pswdVisible;
  final Function(bool) onUpdatePswdVisible;
  final DecidePasswordStrength passwordStrengthIndicator;
  final Function(BuildContext context) passwordConfirmOnPressed;
  final Function(BuildContext context) returnBackScreenOnPressed;
  const LandscapeCreateMainAdminConfirmPasswordScreen({
    Key? key,
    required this.pswdFocusNode,
    required this.pswdController,
    required this.pswdBool,
    required this.pswdVisible,
    required this.onUpdatePswdVisible,
    required this.passwordStrengthIndicator,
    required this.passwordConfirmOnPressed,
    required this.returnBackScreenOnPressed,
  }) : super(key: key);
  @override
  State<LandscapeCreateMainAdminConfirmPasswordScreen> createState() =>
      _LandscapeCreateMainAdminConfirmPasswordScreenState();
}

class _LandscapeCreateMainAdminConfirmPasswordScreenState
    extends State<LandscapeCreateMainAdminConfirmPasswordScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double scnW = MediaQuery.of(context).size.width / 1000;
    double scnH = MediaQuery.of(context).size.height / 1000;
    return Container(
      width: scnW * 1000,
      height: scnH * 1000,
      color: Colors.black38,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: scnW * 80,
                height: scnH * 50,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    bottomLeft: Radius.zero,
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Expanded(
                  child: MaterialButton(
                    animationDuration: const Duration(milliseconds: 250),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.zero,
                        bottomLeft: Radius.zero,
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    color: Colors.blue,
                    elevation: 10,
                    onPressed: () => widget.returnBackScreenOnPressed(context),
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: scnH * 33,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "AccuManage",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: scnH * 100,
                    fontWeight: FontWeight.bold,
                    inherit: true,
                  ),
                ),
                SizedBox(
                  width: scnW * 600,
                  height: scnW * 80,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      AnimatedPositioned(
                        duration: const Duration(microseconds: 200),
                        curve: Curves.ease,
                        top: widget.pswdBool ? 0 : scnH * 65,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease,
                          width: widget.pswdBool ? scnW * 600 : scnW * 300,
                          height: widget.pswdBool ? scnH * 45 : scnH * 40,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  widget.pswdBool ? 30 : 5),
                              border: Border.all(
                                color: Colors.transparent,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      widget.pswdBool ? scnW * 60 : scnW * 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                          widget.pswdBool ? 30 : 5),
                                      bottomLeft: Radius.circular(
                                          widget.pswdBool ? 30 : 5),
                                      topRight: Radius.zero,
                                      bottomRight: Radius.zero,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.lock_open_sharp,
                                    color: widget.pswdBool
                                        ? Colors.deepPurple.shade400
                                        : Colors.deepPurple.shade200,
                                    size: scnH * 30,
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: widget.pswdController,
                                    textAlignVertical: TextAlignVertical.bottom,
                                    focusNode: widget.pswdFocusNode,
                                    obscureText: widget.pswdVisible,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          widget.onUpdatePswdVisible(
                                              !widget.pswdVisible);
                                        },
                                        icon: Icon(
                                          widget.pswdVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          size: scnH * 20,
                                          color: widget.pswdBool
                                              ? Colors.deepPurple.shade400
                                              : Colors.deepPurple.shade200,
                                        ),
                                      ),
                                      hintText: "Password",
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.zero,
                                          bottomLeft: Radius.zero,
                                          topRight: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.black26,
                                          width: scnH,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.zero,
                                          bottomLeft: Radius.zero,
                                          topRight: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.deepPurple.shade400,
                                          width: scnH * 2.75,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                    style: TextStyle(
                                      fontSize: widget.pswdBool
                                          ? scnH * 20
                                          : scnH * 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(microseconds: 250),
                        curve: Curves.ease,
                        top: scnH * 44,
                        left: widget.pswdBool ? scnW * 61 : scnW * 186,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.ease,
                          width: widget.pswdBool ? scnW * 529 : scnW * 259,
                          height: scnH * 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: widget.pswdBool
                                ? widget
                                    .passwordStrengthIndicator.backgroundColors
                                : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.zero,
                              topRight: Radius.zero,
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                          ),
                          child: Text(
                            widget.pswdBool
                                ? widget
                                    .passwordStrengthIndicator.passwordComments
                                : "",
                            style: TextStyle(
                              color: widget.pswdBool
                                  ? widget.passwordStrengthIndicator.fontColors
                                  : Colors.transparent,
                              fontSize: scnH * 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: scnW * 250,
                  height: scnH * 80,
                  child: MaterialButton(
                    animationDuration: const Duration(milliseconds: 250),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.blue,
                    elevation: 10,
                    onPressed: () => widget.passwordConfirmOnPressed(context),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        Positioned(
                          left: scnW * 20,
                          child: Text(
                            "CONFIRM PASSWORD",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: scnH * 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          right: scnW * -0,
                          child: Container(
                            width: scnW * 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                              size: scnH * 55,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Text(
                  "Re write and confirm your password",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: scnH * 25,
                    fontWeight: FontWeight.bold,
                    inherit: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// This Flutter Dart code defines a LandscapeCreateMainAdminScreen widget,
// which is a stateful widget representing a user interface for creating
// a main admin account. The screen layout is optimized for landscape
// orientation. It consists of input fields for username and password,
// with dynamic visibility toggling for the password field. Additionally,
// it displays a password strength indicator. The widget includes a button
// for creating the account. The layout adjusts based on the device's screen
// dimensions