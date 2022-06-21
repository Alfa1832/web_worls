import 'package:flutter/material.dart';

class caffe extends StatefulWidget {
  const caffe({Key? key}) : super(key: key);

  @override
  State<caffe> createState() => _caffeState();
}

class _caffeState extends State<caffe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Text ("Welcome to london Caffe.."),
      ),
    );
  }
}
