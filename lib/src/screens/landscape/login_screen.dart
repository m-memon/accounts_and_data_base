import "package:flutter/material.dart";

class LandscapeLogInScreen extends StatefulWidget {
  const LandscapeLogInScreen({Key? key,}) : super(key: key);

  @override
  State <LandscapeLogInScreen> createState() => _LandscapeLogInScreenState();
}

class _LandscapeLogInScreenState extends State<LandscapeLogInScreen> {

  @override
  Widget build(BuildContext context) {
    double scnW = MediaQuery.of(context).size.width / 1000;
    double scnH = MediaQuery.of(context).size.height / 1000;
    return Container();
  }
}