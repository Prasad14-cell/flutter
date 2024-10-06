import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
    Widget build(BuildContext Context){
      return MaterialApp(
        home:Scaffold(
          appBar:AppBar(
            title:const Text("Container App"),
            centerTitle:true,
            backgroundColor:Colors.blue,
          ),//AppBar
          body:Center(
            child:Column(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width:100,
                  height:100,
                  color:Colors.amber,
                ),//container
                      Container(
                  width:100,
                  height:100,
                  color:Colors.red,
                ),//container
                      Container(
                  width:100,
                  height:100,
                  color:Colors.green,
                ),//container
              ],
            ),
          ),
        ),
      );
    }
  }
