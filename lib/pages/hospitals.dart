import 'package:flutter/material.dart';

class hospital extends StatefulWidget {
  const hospital({Key? key}) : super(key: key);

  @override
  State<hospital> createState() => _hospitalState();
}

class _hospitalState extends State<hospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Text ("Welcome to london hospital..."),
      ),
    );
  }
}
