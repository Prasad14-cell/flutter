import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(const MainApp(),
  );
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});
  @override
  Widget build(BuildContext context){
    print("Device width : ${MediaQuery.of(context).size.width}");
    print("Device height : ${MediaQuery.of(context).size.width}");
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text(
            "ListView Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
            centerTitle:true,
            backgroundColor:Colors.blue,
          ),
          body:ListView(
            children:[
              Image.network(
                "https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg"
              ),
              const Icon(
                Icons.favorite,
                color:Colors.red,
              ),
              const Text(
                "Bhari",
                style:TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
               Image.network(
                "https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg"
              ),
              GestureDetector(
                onTap: (){
                  print("Button Pressed");
                },
                child: Container(
                  height: 50,
                  color:Colors.amber,
                  child:const Text(
                    "Press me",
                  ),
                ),
              ),
              ],
            ),
            ),
        );
  }
  }


