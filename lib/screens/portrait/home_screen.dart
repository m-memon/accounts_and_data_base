import "package:flutter/material.dart";

class PortraitHomeScreen extends StatefulWidget {
  const PortraitHomeScreen({Key? key,}) : super(key: key);

  @override
  State <PortraitHomeScreen> createState() => _PortraitHomeScreenState();
}

class _PortraitHomeScreenState extends State<PortraitHomeScreen> {

  @override
  Widget build(BuildContext context) {
    double scnW = MediaQuery.of(context).size.width / 1000;
    double scnH = MediaQuery.of(context).size.height / 1000;
    return Container();
  }
}