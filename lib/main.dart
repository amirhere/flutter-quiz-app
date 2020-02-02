import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}


class MyAppState extends State<MyApp> {



@override
Widget build(BuildContext context) {

    var questions = [{
      'questionText': 'What\'s your favorite color?',
      'answers':['Black', 'Red', 'Green', 'White'],
    },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers':['Lion', 'Tiger', 'Cheetah', 'Puma'],
      },
      {
        'questionText': 'What\'s your favorite Instructor?',
        'answers':['amir', 'Usman', 'Ehsum', 'ahsan'],
      },

    ];


    var questionIndex = 0;

    void answerQuestion() {


      if(questionIndex < questions.length){
        print("we have more questions");

      }

      setState(() {
        questionIndex = questionIndex+1;
      });

      print(questionIndex);

    }



    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
          children: [
            Question(
                questions[questionIndex]['questionText'],
            ),

        ...(questions[questionIndex]['answers'] as List<String>).map((answer){

              return Answer(answerQuestion,answer);

            }).toList()
          ]
      ),
    ),
  );
}}
