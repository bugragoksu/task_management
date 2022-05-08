import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/language/locale_keys.g.dart';
import 'package:task_management/presentation/core/theme/text_theme.dart';
import 'package:easy_localization/easy_localization.dart';

class BoardCreateButton extends StatelessWidget {
  const BoardCreateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          LocaleKeys.boards_create_buttonText.tr(),
          style: AppTextTheme.instance!.buildButtonLarge,
        ),
      ),
    );
  }
}
