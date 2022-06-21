import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class country extends StatelessWidget {
  const country({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ImageSlideshow(
        width: double.infinity,
        height: 200,

        initialPage: 0,

        indicatorColor: Colors.green,

        indicatorBackgroundColor: Colors.blue,

        children: [
          Image.asset('assets/london.jpg',fit: BoxFit.cover,),
          Image.asset('assets/jieant.jpg',fit: BoxFit.cover,),
          Image.asset('assets/bridg.jpg',fit: BoxFit.cover,),
          Image.asset('assets/paris.jpg',fit: BoxFit.cover,),


        ],
      ),
    );
  }
}
