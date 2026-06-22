import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/views/widgets/coustom_buttom.dart';
import 'package:note_app/views/widgets/coustom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            CoustomTextField(hint: 'Title'),
            SizedBox(height: 16),
            CoustomTextField(hint: 'content', maxlines: 5),
            SizedBox(height: 32),

            CustomButtom(),
          ],
        ),
      ),
    );
  }
}
