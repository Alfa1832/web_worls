import 'package:flutter/material.dart';

class univercity extends StatefulWidget {
  const univercity({Key? key}) : super(key: key);

  @override
  State<univercity> createState() => _univercityState();
}

class _univercityState extends State<univercity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Text ("Welcome to london Univercity...."),
      ),
    );
  }
}
