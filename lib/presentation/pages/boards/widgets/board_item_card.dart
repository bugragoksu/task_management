import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/theme/colors.dart';
import 'package:task_management/presentation/core/theme/text_theme.dart';

class BoardItemCard extends StatelessWidget {
  const BoardItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Card(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.network(
                "https://image.shutterstock.com/image-photo/concept-digital-diagramgraph-interfacesvirtual-screenconnections-600w-662833021.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                'X Project',
                style: AppTextTheme.instance!.buildBodyLarge.copyWith(
                  color: AppColors.greyScale.shade50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
