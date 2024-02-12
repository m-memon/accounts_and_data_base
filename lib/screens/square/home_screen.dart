import "package:flutter/material.dart";

class SquareHomeScreen extends StatefulWidget {
  const SquareHomeScreen({Key? key,}) : super(key: key);

  @override
  State <SquareHomeScreen> createState() => _SquareHomeScreenState();
}

class _SquareHomeScreenState extends State<SquareHomeScreen> {

  @override
  Widget build(BuildContext context) {
    double scnW = MediaQuery.of(context).size.width / 1000;
    double scnH = MediaQuery.of(context).size.height / 1000;
    return Container();
  }
}