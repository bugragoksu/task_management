import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/language/locale_keys.g.dart';
import 'package:task_management/presentation/core/theme/icons.dart';
import 'package:task_management/presentation/core/theme/text_theme.dart';
import 'package:task_management/presentation/pages/dashboard/widgets/board_item_card.dart';
import 'package:easy_localization/easy_localization.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(AppIcons.plus),
          onPressed: () {},
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.dashboard_boards.tr(),
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
