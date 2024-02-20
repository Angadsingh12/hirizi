import'package:flutter/material.dart';
import 'package:hiriizi/screens/add_action_screen.dart';
import 'package:hiriizi/screens/challenge.dart';
import 'package:hiriizi/screens/create_challenge.dart';

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

