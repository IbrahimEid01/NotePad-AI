import 'package:flutter/material.dart';
import 'package:note_app/views/notepad_view.dart';

void main() {
  runApp(const NotePadAI());
}

class NotePadAI extends StatelessWidget {
  const NotePadAI({super.key});

  @override



  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: 'Poppins'
      ),
      home: SafeArea(child: Scaffold(body: NotePadAlView())),
    );
  }
}
  