import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/coustom_notepadai_item.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/notepadai_list_view.dart';

class NotePadAIViewBody extends StatelessWidget {
  const NotePadAIViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'NotePad Ai', icon: Icons.search,
          

        ),
        Expanded(child: NotePadAiLstView()),
      ],
    );
  }
}

