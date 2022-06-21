import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/navigation/country.dart';
import 'package:untitled/pages/banks.dart';
import 'package:untitled/pages/hospitals.dart';
import 'package:untitled/pages/metro.dart';
import 'package:untitled/pages/starbucks.dart';
import 'package:untitled/pages/univercity.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
         title: const Text("Home"),

      ),
      body: Container(

        decoration:const BoxDecoration(image: DecorationImage(image: NetworkImage('https://bit.ly/3mVVHXr'),fit: BoxFit.fill),),
        child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
          child: Padding(padding: EdgeInsets.zero,

            child: ListView(

              children: [
                Padding( padding: EdgeInsets.fromLTRB(0, 2, 0, 0), child: country()),


                const SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>caffe()));
                  },
                  child: Card(

                      child: Row(

                        children: [

                          Image.asset("assets/starbucks.jpg",height: 100,width: 150,fit: BoxFit.fill,),
                         const SizedBox(width: 20,),const Text("Star Bucks",),

                        ],
                      ),
                    ),
                ),
                const SizedBox(height: 20),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>metro()));

                  },
                  child: Card(

                    child: Row(

                      children: [

                        Image.asset("assets/metro.jpg",height: 100,width: 150,fit: BoxFit.fill,),
                        const SizedBox(width: 20,),const Text("Metro")

                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>univercity()));

                  },
                  child: Card(

                    child: Row(

                      children: [

                        Image.asset("assets/univercities.jpg",height: 100,width: 150,fit: BoxFit.fill,),
                        const SizedBox(width: 20,),const Text("Univercities")

                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>banks()));

                  },
                  child: Card(

                    child: Row(

                      children: [

                        Image.asset("assets/banks.jpg",height: 100,width: 150,fit: BoxFit.fill,),
                        const SizedBox(width: 20,),const Text("Banks")

                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>hospital()));

                  },
                  child: Card(

                    child: Row(

                      children: [

                        Image.asset("assets/hospital.jpg",height: 100,width: 150,fit: BoxFit.fill,),
                        const SizedBox(width: 20,),const Text("Hospitals")

                      ],
                    ),
                  ),
                ),

              ],

            ),

          ),
        ),
      ),
      drawer:const Appdrawer(),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.refresh)),
    );

  }
}
