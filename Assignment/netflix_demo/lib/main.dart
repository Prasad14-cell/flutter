import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: const Text(
            "Netflix Demo",
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
          ),
          body:ListView.builder(
            itemCount: 15,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index){
              return Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  const Text(
                    "Action Movie",
                    style:const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child:Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            width: 300,
                            child:Image.network(
                              "https://source.boomplaymusic.com/buzzgroup1/M00/29/8E/rBEeLGG6AD6AJ782AAK7_nvf__s978.jpg",
                            ),
                          ),
                           Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            width: 300,
                            child:Image.network(
                              "https://source.boomplaymusic.com/buzzgroup1/M00/29/8E/rBEeLGG6AD6AJ782AAK7_nvf__s978.jpg",
                            ),
                          ),
                           Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            width: 300,
                            child:Image.network(
                              "https://source.boomplaymusic.com/buzzgroup1/M00/29/8E/rBEeLGG6AD6AJ782AAK7_nvf__s978.jpg",
                            ),
                          ),
                           Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            width: 300,
                            child:Image.network(
                              "https://source.boomplaymusic.com/buzzgroup1/M00/29/8E/rBEeLGG6AD6AJ782AAK7_nvf__s978.jpg",
                            ),
                          ),
                           Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            width: 300,
                            child:Image.network(
                              "https://source.boomplaymusic.com/buzzgroup1/M00/29/8E/rBEeLGG6AD6AJ782AAK7_nvf__s978.jpg",
                            ),
                          ),
                           Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            width: 300,
                            child:Image.network(
                              "https://source.boomplaymusic.com/buzzgroup1/M00/29/8E/rBEeLGG6AD6AJ782AAK7_nvf__s978.jpg",
                            ),
                          ),
                        ],
                        ),
                    ),
                ],
              );
            },
            ),
        ),
    );
  }
}