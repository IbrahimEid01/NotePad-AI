

import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CoustomTextField extends StatelessWidget {
  const CoustomTextField({super.key, required this.hint,  this.maxlines =1});

  final String hint;
  final int maxlines;


  @override
  Widget build(BuildContext context) {
    return TextField(
            cursorColor: kPrimaryColor,
            maxLines: maxlines,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: kPrimaryColor),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(kPrimaryColor),
            ),
          );


  }
  
  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}