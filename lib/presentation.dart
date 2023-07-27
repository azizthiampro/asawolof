import 'package:flutter/material.dart';

class Presentation extends StatefulWidget {
  @override
  _PresentationState createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Presentation Page"),
      ),
    );
  }
}
