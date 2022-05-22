import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/language/locale_keys.g.dart';
import 'package:task_management/presentation/core/router/router.gr.dart';
import 'package:task_management/presentation/core/theme/icons.dart';
import 'package:task_management/presentation/core/theme/text_theme.dart';
import 'package:task_management/presentation/pages/boards/create/create_screen.dart';
import 'package:task_management/presentation/pages/boards/widgets/board_item_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';

class BoardsScreen extends StatelessWidget {
  const BoardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(AppIcons.plus),
          onPressed: () {
            context.router.navigate(
              CreateScreenRoute(type: CreateScreenType.board),
            );
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.boards_title.tr(),
                style: AppTextTheme.instance!.buildTitleLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) => const BoardItemCard(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
