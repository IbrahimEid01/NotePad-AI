import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/edit_note_view.dart';

class NotePadAiItem extends StatelessWidget {
  const NotePadAiItem({super.key, required this.note});

  final NotePadAiModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(
                note : note,
              );
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              title: Text(
                note.title,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withValues(alpha: .4),
                  ),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.delete_sharp,
                  color: Colors.black,
                  size: 38,
                ),
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Text(
                note.date,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withValues(alpha: .4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
