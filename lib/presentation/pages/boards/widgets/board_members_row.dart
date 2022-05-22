import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/theme/colors.dart';
import 'package:task_management/presentation/core/theme/icons.dart';
import 'package:task_management/presentation/core/theme/text_theme.dart';

class BoardMembersRow extends StatelessWidget {
  const BoardMembersRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          AppIcons.users,
          color: AppColors.greyScale,
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 30,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: ((context, index) {
              if (index != 3) {
                return CircleAvatar(
                  backgroundColor: AppColors.secondary,
                  child: Text(
                    'H',
                    style: AppTextTheme.instance!.buildBodyMedium,
                  ),
                );
              } else {
                return CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      AppIcons.plus,
                      size: 16,
                      color: Colors.black,
                    ),
                  ),
                );
              }
            }),
          ),
        )
      ],
    );
  }
}
