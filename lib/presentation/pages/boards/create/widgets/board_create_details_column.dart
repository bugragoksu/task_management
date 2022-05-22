import 'package:flutter/material.dart';
import 'package:task_management/presentation/pages/boards/create/widgets/board_create_date_row.dart';
import 'package:task_management/presentation/pages/boards/create/widgets/board_create_description_row.dart';
import 'package:task_management/presentation/pages/boards/create/widgets/board_create_members_row.dart';

class BoardCreateDetailsColumn extends StatelessWidget {
  const BoardCreateDetailsColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BoardCreateDateRow(),
        SizedBox(
          height: 5,
        ),
        BoardCreateMembersRow(),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 5,
        ),
        BoardCreateDescriptionRow()
      ],
    );
  }
}