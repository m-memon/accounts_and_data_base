import "package:flutter/material.dart";
import "/src/module/password.dart";

class SquareCreateMainAdminScreen extends StatefulWidget {
  final FocusNode emailFocusNode;
  final TextEditingController emailController;
  final bool emailBool;
  final FocusNode pswdFocusNode;
  final TextEditingController pswdController;
  final bool pswdBool;
  final bool pswdVisible;
  final Function(bool) onUpdatePswdVisible;
  final DecidePasswordStrength passwordStrengthIndicator;
  final Function() loginOnPressed;
  final Function() loginWithFacebookOnPressed;
  final Function() dontHaveAnAccountOnPressed;
  const SquareCreateMainAdminScreen({
    Key? key,
    required this.emailFocusNode,
    required this.emailController,
    required this.pswdFocusNode,
    required this.pswdController,
    required this.emailBool,
    required this.pswdBool,
    required this.pswdVisible,
    required this.onUpdatePswdVisible,
    required this.passwordStrengthIndicator,
    required this.loginOnPressed,
    required this.loginWithFacebookOnPressed,
    required this.dontHaveAnAccountOnPressed,
  }) : super(key: key);
  @override
  State<SquareCreateMainAdminScreen> createState() => _SquareCreateMainAdminScreenState();
}

class _SquareCreateMainAdminScreenState extends State<SquareCreateMainAdminScreen> {
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
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "DEMO",
            style: TextStyle(
              color: Colors.blue,
              fontSize: scnH * 140,
              fontWeight: FontWeight.bold,
              inherit: true,
            ),
          ),
          Text(
            "Square Login Screen",
            style: TextStyle(
              color: Colors.blue,
              fontSize: scnH * 50,
              fontWeight: FontWeight.bold,
              inherit: true,
            ),
          ),
          SizedBox(
            height: scnH * 50,
          ),
          Container(
            width: scnW * 950,
            height: scnH * 135,
            color: Colors.transparent,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                AnimatedPositioned(
                  duration: const Duration(microseconds: 200),
                  curve: Curves.ease,
                  top: widget.emailBool ? scnH * 0 : scnH * 5,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                    width: widget.emailBool ? scnW * 950 : scnW * 600,
                    height: widget.emailBool ? scnH * 45 : scnH * 40,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(widget.emailBool ? 30 : 5),
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: widget.emailBool ? scnW * 60 : scnW * 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(widget.emailBool ? 30 : 5),
                                bottomLeft:
                                    Radius.circular(widget.emailBool ? 30 : 5),
                                topRight: Radius.zero,
                                bottomRight: Radius.zero,
                              ),
                            ),
                            child: Icon(
                              Icons.person,
                              color: widget.emailBool
                                  ? Colors.deepPurple.shade400
                                  : Colors.deepPurple.shade200,
                              size: scnH * 30,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: widget.emailController,
                              focusNode: widget.emailFocusNode,
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                hintText: "Email",
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
                                    widget.emailBool ? scnH * 20 : scnH * 18,
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
                    width: widget.pswdBool ? scnW * 950 : scnW * 600,
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
                                    size: scnH * 18,
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
                  left: widget.pswdBool ? scnW * 65 : scnW * 250,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.ease,
                    width: widget.pswdBool ? scnW * 863 : scnW * 259,
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
            width: scnW * 950,
            height: scnH * 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: scnW * 450,
                  height: scnH * 50,
                  child: MaterialButton(
                    animationDuration: const Duration(milliseconds: 250),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.blue,
                    elevation: 10,
                    onPressed: () => widget.loginOnPressed(),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        Positioned(
                          left: scnW * 37.5,
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: scnH * 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          right: scnW * -0,
                          child: Container(
                            width: scnW * 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                              size: scnH * 27.5,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: scnW * 450,
                  height: scnH * 50,
                  child: MaterialButton(
                    animationDuration: const Duration(milliseconds: 250),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.blue[900],
                    elevation: 10,
                    onPressed: () => widget.loginWithFacebookOnPressed(),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        Positioned(
                          left: scnW * 20,
                          child: Text(
                            "LOGIN WITH FACEBOOK",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: scnH * 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          right: scnW * -0,
                          child: Container(
                            width: scnW * 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.facebook_outlined,
                              color: Colors.blue[900],
                              size: scnH * 27.5,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: scnH * 20,
          ),
          TextButton(
            onPressed: () => widget.dontHaveAnAccountOnPressed(),
            child: Text(
              "Don't Have An Account?",
              style: TextStyle(
                fontSize: scnH * 17,
              ),
            ),
          )
        ],
      ),
    );
  }
}

//  This Flutter code defines a stateful widget named `SquareLogInScreen`,
//  representing the login screen for a multi-platform application in a square
//  or portrait orientation. Similar to the previous code, it includes UI
//  elements such as text fields for email and password, password strength
//  indicators, buttons for login and login with Facebook, and a link for users
//  who don't have an account. The widget adjusts its appearance based on the
//  state of the email and password input fields. AnimatedPositioned and
//  AnimatedContainer are used for smooth animations when elements change
//  visibility or size. The widget also interacts with a `DecidePasswordStrength`
//  class to provide feedback on password strength.