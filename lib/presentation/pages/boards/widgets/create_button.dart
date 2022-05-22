import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/language/locale_keys.g.dart';
import 'package:task_management/presentation/core/theme/text_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:task_management/presentation/pages/boards/create/create_screen.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({Key? key, required this.type}) : super(key: key);

  final CreateScreenType type;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          type == CreateScreenType.board
              ? LocaleKeys.boards_create_buttonText.tr()
              : LocaleKeys.tasks_create_buttonText.tr(),
          style: AppTextTheme.instance!.buildButtonLarge,
        ),
      ),
    );
  }
}
