import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/language/locale_keys.g.dart';
import 'package:task_management/presentation/core/theme/colors.dart';
import 'package:task_management/presentation/core/theme/icons.dart';
import 'package:easy_localization/easy_localization.dart';

class BoardCreateDescriptionRow extends StatefulWidget {
  const BoardCreateDescriptionRow({
    Key? key,
  }) : super(key: key);

  @override
  State<BoardCreateDescriptionRow> createState() => _BoardCreateDescriptionRowState();
}

class _BoardCreateDescriptionRowState extends State<BoardCreateDescriptionRow> {
  late final TextEditingController _editingController;
  @override
  void initState() {
    _editingController = TextEditingController(
      text: LocaleKeys.boards_create_boardDescription.tr(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          AppIcons.document,
          color: AppColors.greyScale,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: SizedBox(
                height: 35,
                child: TextField(
                  controller: _editingController,
                )))
      ],
    );
  }
}
