import 'package:flutter/material.dart';

class metro extends StatefulWidget {
  const metro({Key? key}) : super(key: key);

  @override
  State<metro> createState() => _metroState();
}

class _metroState extends State<metro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Welcome to London Metro.")),
    );
  }
}
