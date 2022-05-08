import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/language/locale_keys.g.dart';
import 'package:task_management/presentation/core/theme/icons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:task_management/presentation/core/theme/text_theme.dart';
import 'package:task_management/presentation/pages/boards/widgets/board_create_button.dart';
import 'package:task_management/presentation/pages/boards/widgets/board_create_details_column.dart';
import 'package:task_management/presentation/pages/boards/widgets/board_create_project_types.dart';

class BoardCreateScreen extends StatefulWidget {
  const BoardCreateScreen({Key? key}) : super(key: key);

  @override
  State<BoardCreateScreen> createState() => _BoardCreateScreenState();
}

class _BoardCreateScreenState extends State<BoardCreateScreen> {
  late final TextEditingController _titleController;

  @override
  void initState() {
    _titleController = TextEditingController(
      text: LocaleKeys.boards_create_exampleProject.tr(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.boards_create_title.tr(),
        ),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(AppIcons.leftArrow),
          onPressed: () => context.router.pop(),
        ),
      ),
      body: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.boards_create_boardTitle.tr(),
                style: AppTextTheme.instance!.buildTitleMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  controller: _titleController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                LocaleKeys.boards_create_boardType.tr(),
                style: AppTextTheme.instance!.buildTitleMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 100,
                child: BoardCreateProjectTypes(),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                LocaleKeys.boards_create_boardDetails.tr(),
                style: AppTextTheme.instance!.buildTitleMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              const BoardCreateDetailsColumn(),
              const SizedBox(
                height: 30,
              ),
              const BoardCreateButton(),
            ],
          ),
        ),
      ),
    );
  }
}
