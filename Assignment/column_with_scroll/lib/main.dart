import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title:const Text(
          "Column Demo",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          
        
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
            Container(
              height:200,
              width:200,
              color:Colors.amber,
            ),
            Image.network(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
            Container(
              height:200,
              width:200,
              color:Colors.amber,
            ),
            Image.network(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
                Container(
                height:200,
                width:200,
                color:Colors.amber,
                ),
          ],
        ),
        ),
    ),
    
    );
  }
  }


