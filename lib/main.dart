import'package:flutter/material.dart';
import 'package:hiriizi/screens/challenge.dart';

void main(){
  runApp(RunApp());
}

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChallengeScreen(),
    );
  }
}

