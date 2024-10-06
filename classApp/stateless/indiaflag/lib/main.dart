import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext Context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"India Flag",
      home:MyScreen(),
    );
  }
}
class MyScreen extends StatelessWidget{
  const MyScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text("India Flag"),
        centerTitle:true,
        backgroundColor:Colors.blue,
      ),
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
        children:[
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Container(
              width:10,
              height:455,
              color:const Color.fromARGB(255,84,74,74),
          ),
          SizedBox(
          width:150,
          height:455,
          child:Column(
            children:[
              Container(
                width:200,
                height:40,
                color:Colors.orange,
          ),
           Container(
          width:200,
          height:40,
          color:Colors.white,
          child:Image.network(
           "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/2000px-Ashoka_Chakra.svg.png"
          ),
          ),
           Container(
          width:200,
          height:40,
          color:Colors.green,
          ),
            ],
          ),
          ),   
        ],
        ),
        Row(
          
          children: [ 
            const SizedBox(
              width:50,
            ),
            Container(
              width:150,
              height:45,
              color:const Color.fromARGB(255,192,164,124),
      ),
          ],
    ),
    Row(
      
      children:[
        const SizedBox(
          width:25,
        ),
        Container(
          width:200,
          height:45,
          color:const Color.fromARGB(255,144,115,73),
        ),
      ],
    ),
    Row(
      
      children: [
        const SizedBox(
          width:15,
        ),
        Container(
          width:220,
          height:45,
          color:const Color.fromARGB(255,78,61,37),
        ),
        ],
        ),
        ],
        ),
      ),
    );
  }
}