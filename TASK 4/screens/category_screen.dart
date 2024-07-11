import 'package:flutter/material.dart';
import 'package:quiz_app/utils/icons.dart';
import 'package:quiz_app/widgets/category_card.dart';

class CatogeryScreen extends StatelessWidget {
  const CatogeryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
       CategoryCard(quizName: 'IQ quiz' , quizColor: Colors.green,),
       CategoryCard(quizName: 'Sports quiz' , quizColor: Colors.white,),
       CategoryCard(quizName: 'History quiz' , quizColor: Colors.green,),

        ],
     
        ),
      );
    
  }
}
