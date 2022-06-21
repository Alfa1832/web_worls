import 'package:flutter/material.dart';

class banks extends StatefulWidget {
  const banks({Key? key}) : super(key: key);

  @override
  State<banks> createState() => _banksState();
}

class _banksState extends State<banks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Text ("Welcome to Bank of London"),
      ),
    );
  }
}
