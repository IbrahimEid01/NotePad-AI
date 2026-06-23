
import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/coustom_buttom.dart';
import 'package:note_app/views/widgets/coustom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 30),
          CoustomTextField(
              onSaved: (value) {
                title = value;
              },
              hint: 'Title'),
          SizedBox(height: 16),
          CoustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              hint: 'content', maxlines: 5),
          SizedBox(height: 32),
          CustomButtom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              
          ),
        ],
      ),
    );
  }
}
