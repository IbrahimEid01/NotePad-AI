import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/coustom_buttom.dart';
import 'package:note_app/views/widgets/coustom_text_field.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: 'Edit NotePadAi', icon: Icons.check),
            SizedBox(height: 10),
            CoustomTextField(hint: 'Title'),
            SizedBox(height: 20),
            CoustomTextField(hint: 'content', maxlines: 5),
            SizedBox(height: 32),

            CustomButtom(),
          ],
        ),
      ),
    );
  }
}
