import 'dart:ui';

import 'package:flutter/material.dart';
import 'drawar.dart';

void main(){
  runApp(MaterialApp(
    home: const Home(),
    theme: ThemeData(primarySwatch: Colors.blue)
      ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text("Home"),

      ),
      body: Container(

        decoration:const BoxDecoration(image: DecorationImage(image: NetworkImage('https://bit.ly/3mVVHXr'),fit: BoxFit.fill),),
        child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
          child: Padding(padding: EdgeInsets.zero,

            child: ListView(

              children: [
                Card(

                child:Column(
              children: [
                Image.asset("assets/london.jpg",),
                const Text('London')
              ],

                ),
            ),
                const SizedBox(height: 20),

                Card(

                    child: Row(

                      children: [

                        Image.asset("assets/starbucks.jpg",height: 100,width: 150,fit: BoxFit.fill,),
                       const SizedBox(width: 20,),const Text("Star Bucks")

                      ],
                    ),
                  ),
                const SizedBox(height: 20),

                Card(

                  child: Row(

                    children: [

                      Image.asset("assets/metro.jpg",height: 100,width: 150,fit: BoxFit.fill,),
                      const SizedBox(width: 20,),const Text("Metro")

                    ],
                  ),
                ),
                const SizedBox(height: 20),

                Card(

                  child: Row(

                    children: [

                      Image.asset("assets/univercities.jpg",height: 100,width: 150,fit: BoxFit.fill,),
                      const SizedBox(width: 20,),const Text("Univercities")

                    ],
                  ),
                ),
                const SizedBox(height: 20),

                Card(

                  child: Row(

                    children: [

                      Image.asset("assets/banks.jpg",height: 100,width: 150,fit: BoxFit.fill,),
                      const SizedBox(width: 20,),const Text("Banks")

                    ],
                  ),
                ),
                const SizedBox(height: 20),

                Card(

                  child: Row(

                    children: [

                      Image.asset("assets/hospital.jpg",height: 100,width: 150,fit: BoxFit.fill,),
                      const SizedBox(width: 20,),const Text("Hospitals")

                    ],
                  ),
                ),

              ],

            ),

          ),
        ),
      ),
      drawer:const Appdrawer(),
    );

  }
}
