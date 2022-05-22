import 'package:boardview/board_item.dart';
import 'package:boardview/board_list.dart';
import 'package:boardview/boardview.dart';
import 'package:flutter/material.dart';
import 'package:task_management/application/board/models/board_model.dart';
import 'package:task_management/presentation/core/router/router.gr.dart';
import 'package:task_management/presentation/core/theme/colors.dart';
import 'package:task_management/presentation/core/theme/icons.dart';
import 'package:task_management/presentation/core/theme/text_theme.dart';
import 'package:task_management/presentation/pages/boards/create/create_screen.dart';
import 'package:task_management/presentation/pages/boards/widgets/board_members_row.dart';
import 'package:auto_route/auto_route.dart';

class BoardDetailScreen extends StatelessWidget {
  const BoardDetailScreen({
    Key? key,
    required this.boardTitle,
  }) : super(key: key);
  final String boardTitle;

  final List<BoardListObject> _listData = const [
    BoardListObject(title: "To Do", items: [
      BoardItemObject(title: 'test'),
      BoardItemObject(title: 'test2'),
      BoardItemObject(title: 'test3'),
    ]),
    BoardListObject(title: "In Progress", items: [
      BoardItemObject(title: 'test'),
      BoardItemObject(title: 'test2'),
      BoardItemObject(title: 'test3'),
    ]),
    BoardListObject(title: "Done", items: [
      BoardItemObject(title: 'test'),
      BoardItemObject(title: 'test2'),
      BoardItemObject(title: 'test3'),
    ])
  ];

  @override
  Widget build(BuildContext context) {
    List<BoardList> _lists = [];
    for (int i = 0; i < _listData.length; i++) {
      _lists.add(_createBoardList(_listData[i]) as BoardList);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(boardTitle),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.navigate(
            CreateScreenRoute(type: CreateScreenType.task),
          );
        },
        child: const Icon(AppIcons.plus),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: BoardMembersRow(),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: BoardView(
                lists: _lists,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createBoardList(BoardListObject list) {
    List<BoardItem> items = [];
    for (int i = 0; i < list.items.length; i++) {
      items.insert(i, buildBoardItem(list.items[i]) as BoardItem);
    }

    return BoardList(
      footer: const SizedBox(height: 20),
      headerBackgroundColor: AppColors.secondary.shade50,
      backgroundColor: AppColors.secondary.shade50,
      header: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              list.title,
              style: AppTextTheme.instance!.buildBodyLarge,
            ),
          ),
        ),
      ],
      items: items,
    );
  }

  Widget buildBoardItem(BoardItemObject itemObject) {
    return BoardItem(
        item: SizedBox(
      height: 50,
      child: Card(
        color: AppColors.secondary.shade100,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            itemObject.title,
            style: AppTextTheme.instance!.buildBodySmall,
          ),
        ),
      ),
    ));
  }
}
