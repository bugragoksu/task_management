import 'package:flutter/material.dart';
import 'package:task_management/presentation/pages/boards/create/create_screen.dart';
import 'package:task_management/presentation/pages/boards/widgets/create_date_row.dart';
import 'package:task_management/presentation/pages/boards/widgets/create_description_row.dart';
import 'package:task_management/presentation/pages/boards/widgets/board_members_row.dart';

class CreateDetailsColumn extends StatelessWidget {
  const CreateDetailsColumn({Key? key, required this.type}) : super(key: key);
  final CreateScreenType type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CreateDateRow(),
        const SizedBox(
          height: 5,
        ),
        const BoardMembersRow(),
        const SizedBox(
          height: 5,
        ),
        const SizedBox(
          height: 5,
        ),
        BoardCreateDescriptionRow(type: type)
      ],
    );
  }
}
