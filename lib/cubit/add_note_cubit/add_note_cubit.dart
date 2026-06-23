

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  

addNote(NotPadAiModel note) async {
  emit(AddNoteLoading());

  try {
  var notesBox = Hive.box<NotPadAiModel>(kNoteBox);
  await notesBox.add(note);
  emit(AddNoteSuccess());
  await notesBox.add(note);
} on Exception catch (e) {
  emit(AddNoteFailure(e.toString()));
}


}

}


