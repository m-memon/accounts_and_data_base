import "package:flutter/material.dart";

class PortraitLogInScreen extends StatefulWidget {
  const PortraitLogInScreen({Key? key,}) : super(key: key);

  @override
  State <PortraitLogInScreen> createState() => _PortraitLogInScreenState();
}

class _PortraitLogInScreenState extends State<PortraitLogInScreen> {

  @override
  Widget build(BuildContext context) {
    double scnW = MediaQuery.of(context).size.width / 1000;
    double scnH = MediaQuery.of(context).size.height / 1000;
    return Container();
  }
}