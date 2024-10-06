import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState()=>_MainApp();
}
class _MainApp extends State{
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar:AppBar(
      title:const Text (
        ("shoes"),
        style: TextStyle( 
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Colors.deepPurple,
        ),
      ),
      actions:const [
        Padding(
          padding: EdgeInsets.only(right:20),
          child: Icon(
            Icons.trolley,
          ),
          ),
      ],
       backgroundColor:Colors.white,
    ),
    body :Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
          Image.network(
            "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                 
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Nike Air Force 1'07",
            style:TextStyle(
              fontSize:20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
      ],
            ),
            ), 
          );
  }
}
