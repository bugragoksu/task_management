import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/theme/colors.dart';
import 'package:task_management/presentation/core/theme/icons.dart';
import 'package:task_management/presentation/core/theme/text_theme.dart';

class CreateDateRow extends StatelessWidget {
  const CreateDateRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          AppIcons.clock,
          color: AppColors.greyScale,
        ),
        const SizedBox(
          width: 10,
        ),
        TextButton(
          child: Text(
            '31/12/2022',
            style: AppTextTheme.instance!.buildBodyMedium,
          ),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (_) => SizedBox(
                height: 250,
                child: CupertinoDatePicker(
                  backgroundColor: AppColors.greyScale.shade50,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (val) {},
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
