import "dart:ui";

import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
    Widget build(BuildContext Context){
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:QuizApp(),
      );
    }
  }
  class QuizApp extends StatefulWidget{
    const QuizApp({super.key});
    @override
  State createState()=>_QuizAppState(); 
  }
  class _QuizAppState extends State{
    List<Map> allQuestions =[
        {
          "question":"Who is the founder of Microsoft?",
          "option":["steve Jobs","Bill Gates","Lary Page","Elon musk"],
          "correctAnswer":1
        },
        {
          "question":"Who is the founder of Google?",
          "option":["steve Jobs","Bill Gates","Lary Page","Elon musk"],
          "correctAnswer":2
        },
        {
          "question":"Who is the founder of SpaceX?",
          "option":["steve Jobs","Bill Gates","Lary Page","Elon musk"],
          "correctAnswer":3
        },
        {
          "question":"Who is the founder of Apple?",
          "option":["steve Jobs","Bill Gates","Lary Page","Elon musk"],
          "correctAnswer":0
        },
        {
          "question":"Who is the founder of Meta?",
          "option":["steve Jobs","Mark Zukerberg","Lary Page","Elon musk"],
          "correctAnswer":1
        },
    ];
    int currentQuestionIndex =0;
    int selectedAnswerIndex = -1;
    int score=0;
    WidgetStateProperty<Color?> checkAnswer (int answerIndex){
      if(selectedAnswerIndex != -1){
        if(answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]){
          return const WidgetStatePropertyAll(Colors.green);
        }else if(selectedAnswerIndex == answerIndex){
          return const WidgetStatePropertyAll(Colors.red);
        }else{
          return const WidgetStatePropertyAll(null);
        }
        }else{
          return const WidgetStatePropertyAll(null);
        }
    }
        bool questionPage = true;
    @override
   Widget build(BuildContext Context){
    return isQuestionScreen();
   }
   Scaffold isQuestionScreen(){
    if(questionPage == true){
      return Scaffold(
      appBar:AppBar(
        title: const Text (
          "Quiz App",
        style:TextStyle(
        fontSize:28,
        fontWeight:FontWeight.w900,
        color:Colors.brown,
        ),
      ),
      centerTitle:true, 
      backgroundColor:Colors.blue,
      ),
      body:Column(
        children: [
          const SizedBox(
            height:30,
          ),
          Row(
            children:[
              const SizedBox(
                width:130,
              ),
              Text(
                "Question: ${currentQuestionIndex + 1}/${allQuestions.length}",
                style:const TextStyle(
                  fontSize:30,
                  fontWeight: FontWeight.w700,
                ),
              ), 
            ],
        ),
        const SizedBox(
          height:50,
        ),
        SizedBox(
          width:380,
          height:50,
          child:Text(
            allQuestions[currentQuestionIndex]["question"],
            style:const TextStyle(
              fontSize:25,
              color:Colors.purple,
        ),
          ),
        ),
        const SizedBox(
          height:50,
        ),
        SizedBox(
          height:50,
          width:350,
          child:ElevatedButton(
            style:ButtonStyle(
              backgroundColor: checkAnswer(0),
            ),
            onPressed: (){
              if(selectedAnswerIndex == -1){
                selectedAnswerIndex = 0;
                if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
                  score++;
                }
                setState((){});
              }
            },
            child:Text(
              "A.${allQuestions[currentQuestionIndex]['option'][0]}",
              style:const TextStyle(
                fontSize:20,
                fontWeight: FontWeight.w500,
            ),
            ),
          ),
        ),
        const SizedBox(
          height:25,
        ),
        SizedBox(
          height:50,
          width:350,
          child:ElevatedButton(
            style:ButtonStyle(
              backgroundColor: checkAnswer(1),
            ),
            onPressed: (){
              if(selectedAnswerIndex == -1){
                selectedAnswerIndex = 1;
                if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
                  score++;
                }
                setState(() {});
              }
            },
            child:Text(
              "B.${allQuestions[currentQuestionIndex]['option'][1]}",
              style:const TextStyle(
                fontSize:20,
                fontWeight:FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(
          height:25,
        ),
        SizedBox(
          height:50,
          width:350,
          child:ElevatedButton(
            style:ButtonStyle(
              backgroundColor: checkAnswer(2),
            ),
            onPressed: (){
              if(selectedAnswerIndex == -1){
                selectedAnswerIndex = 2;
                if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
                  score++;
                }
                setState(() {});
              }
            },
            child:Text(
              "C.${allQuestions[currentQuestionIndex]['option'][2]}",
              style:const TextStyle(
                fontSize:20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(
          height:25,
        ),
         SizedBox(
          height:50,
          width:350,
          child:ElevatedButton(
            onPressed: (){
              if(selectedAnswerIndex == -1){
                selectedAnswerIndex = 3;
                if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
                  score++;
                }
                setState(() {});
              }
            },
            style:ButtonStyle(
              backgroundColor: checkAnswer(3),
            ),
            child:Text(
              "D.${allQuestions[currentQuestionIndex]['option'][3]}",
            style:const TextStyle(
            fontSize:20,
            fontWeight: FontWeight.w500,
            ),
           ),
          ),
        ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(selectedAnswerIndex != -1){
          if(currentQuestionIndex < allQuestions.length - 1){
            currentQuestionIndex++;
          }else{
            questionPage = false;
          }
          selectedAnswerIndex = -1;
          setState(() {});
    }
          },
   backgroundColor: Colors.blue,
   child:const Icon(
    Icons.forward,
    color:Colors.brown,
   ),
      ),
      );
   }else{
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz Result",
          style: TextStyle(
            fontSize:28,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle:true,
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.network(
             "https://img.freepik.com/premium-vector/winner-background-first-place-competition_260559-78.jpg?w=360",
             height: 300, 
            ),
            const SizedBox(height:30),
            const Text(
              "Congratulation",
              style:TextStyle(
                fontSize:30,
                fontWeight: FontWeight.w900,
                color:Colors.brown,
              ),
            ),
            const SizedBox(height:30),
             Text("Score:$score/${allQuestions.length} "),
          ],
        ),
      ),
    );
   }
  }
  }