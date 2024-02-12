import "package:flutter/material.dart";

class LandscapeHomeScreen extends StatefulWidget {
  const LandscapeHomeScreen({Key? key,}) : super(key: key);

  @override
  State <LandscapeHomeScreen> createState() => _LandscapeHomeScreenState();
}

class _LandscapeHomeScreenState extends State<LandscapeHomeScreen> {

  @override
  Widget build(BuildContext context) {
    double scnW = MediaQuery.of(context).size.width / 1000;
    double scnH = MediaQuery.of(context).size.height / 1000;
    return Container();
  }
}