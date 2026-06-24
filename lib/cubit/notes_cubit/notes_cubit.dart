import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubit/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NotePadAiModel>? notes;

  fetchAllNotes() {
    var notesBox = Hive.box<NotePadAiModel>(kNoteBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
