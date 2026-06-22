import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/coustom_notepadai_item.dart';

class NotePadAiLstView extends StatelessWidget {
  const NotePadAiLstView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const NotePadAiItem();
      },
    );
  }
}
