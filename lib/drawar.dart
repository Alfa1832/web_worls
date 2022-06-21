import 'package:flutter/material.dart';
import 'package:untitled/navigation/country.dart';
import 'package:untitled/navigation/educat.dart';
import 'package:untitled/navigation/info.dart';
import 'package:untitled/navigation/setting.dart';
import 'package:untitled/navigation/user.dart';
import 'package:untitled/portfilio.dart';


class Appdrawer extends StatelessWidget {
  const Appdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: ListView(padding: EdgeInsets.zero,
       children: [
         DrawerHeader(
           decoration: const BoxDecoration(
             image: DecorationImage(image: NetworkImage('https://bit.ly/3zFhbzr'),fit: BoxFit.fill)
           ), child: Stack(
           children: [
             Align(
               alignment: Alignment.bottomLeft + const Alignment(-0.1,-1.5),
               child: const CircleAvatar(
                 backgroundImage: NetworkImage('https://bit.ly/3mVVHXr'),radius:40,
               ),
             ),
             Align(
               alignment: Alignment.bottomRight + const Alignment(0,-0.4),
               child: const Text("UK",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),

               ),

             ),
             Align(
                alignment: Alignment.bottomRight + const Alignment(0,-0.1),
                child: const Text("Welcome to Bretain.",style: TextStyle(color: Colors.grey,fontSize: 15, fontWeight: FontWeight.normal,decoration: TextDecoration.underline),),
             ),

           ]),
         ), ListTile(

           leading: Icon(Icons.person),
           title: Text("Users"),
           trailing: Icon(Icons.remove_red_eye_sharp),
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=> user()));
           },
         ),
         ListTile(
           leading: Icon(Icons.flag),
           title: Text("Countries"),
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=> country()));
           },
         ),
         ListTile(
           leading: Icon(Icons.school),
           title: Text("Education"),
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=> educate()));
           },
         ),
         ListTile(
           leading: Icon(Icons.settings),
           title: Text("Settings"),
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=> setting()));
           },
          ),
         ListTile(
           leading: Icon(Icons.info),
           title: Text("About Us..."),
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=> info()));
           },
         ),
         ListTile(
           leading: Icon(Icons.task),
           title: Text("test"),
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>portfolio()));
           },
         ),
       ],),
    );
  }
}
