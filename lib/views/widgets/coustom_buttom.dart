
import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        color: kPrimaryColor,

        borderRadius: BorderRadius.circular(10),
      ),

      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
