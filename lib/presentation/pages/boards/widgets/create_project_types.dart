import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/theme/colors.dart';
import 'package:task_management/presentation/core/theme/text_theme.dart';
import 'dart:math' as math;

class CreateProjectTypes extends StatelessWidget {
  const CreateProjectTypes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2.5,
        crossAxisCount: 3,
      ),
      itemCount: 5,
      itemBuilder: (context, index) => Chip(
        label: InkWell(
          onTap: () {},
          child: Text(
            'example',
            style: AppTextTheme.instance!.buildSubheadingMedium.copyWith(
              color: AppColors.greyScale.shade50,
            ),
          ),
        ),
        backgroundColor: Color(
          (math.Random().nextDouble() * 0xFF000).toInt(),
        ).withOpacity(1.0),
      ),
    );
  }
}
