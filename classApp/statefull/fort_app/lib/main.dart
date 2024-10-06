import 'package:flutter/material.dart';

void main() {
  runApp(const FortsApp());
}
class FortsApp extends StatefulWidget{
  const  FortsApp({super.key});
  @override

    State<FortsApp> createState() => _FortsAppState();
  }
class _FortsAppState extends State<FortsApp>{
  int _counter = 0;
  List<String> FortsList = <String>[
  "https://www.shutterstock.com/image-photo/natureal-green-mountains-view-pratapgad-260nw-1496251019.jpg",
  "https://t3.ftcdn.net/jpg/03/69/59/98/360_F_369599847_X1EfEv3A7UfYn7wIOC4vgVa15ChI6qYU.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmrLxwGvMKmgFFoXki6SvyYPLDCNuQ4kfiPw&s",
  "https://www.shutterstock.com/image-photo/pune-maharashtraindia-october-10102015rajgad-fort-260nw-1290444115.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5wGx3ugfisnq0bLnyMHbqHGeYYo7IFdFJ_w&s",



  ];
  @override
 Widget build(BuildContext Context){
  return MaterialApp(
   title:'FortsApp',
   home:Scaffold(
    appBar:AppBar(
      backgroundColor:Colors.blue,
      title:const Text("Forts App"),
      centerTitle:true,
    ),
    body:Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Image.network(FortsList[_counter],
            height:300,
          ),
        ],
      ),
    ),
    floatingActionButton:FloatingActionButton(
      onPressed:(){
        if(_counter < FortsList.length - 1){
          _counter++;
        }else{
          _counter = 0;
        }
        setState((){});
      },
        tooltip:'Increment',
        child: const Icon(Icons.add),
    ),
   ),
  );
  }
}



