import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/coustom_buttom.dart';
import 'package:note_app/views/widgets/coustom_text_field.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NotePadAiModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes;

                Navigator.pop(context);
                // ignore: use_build_context_synchronously
              },
              title: 'Edit NotePadAi',
              icon: Icons.check,
            ),
            SizedBox(height: 10),

            SizedBox(height: 10),
            CoustomTextField(
              onChanged: (value) {
                title = value;
              },

              hint: widget.note.title,
            ),
            SizedBox(height: 20),
            CoustomTextField(
              onChanged: (value) {
                content = value;
              },

              hint: widget.note.subTitle,
              maxlines: 5,
            ),
            SizedBox(height: 32),

            CustomButtom(),
          ],
        ),
      ),
    );
  }
}
