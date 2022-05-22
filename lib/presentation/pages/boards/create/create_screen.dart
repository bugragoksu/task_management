import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/language/locale_keys.g.dart';
import 'package:task_management/presentation/core/theme/icons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:task_management/presentation/core/theme/text_theme.dart';
import 'package:task_management/presentation/pages/boards/widgets/create_button.dart';
import 'package:task_management/presentation/pages/boards/widgets/create_details_column.dart';
import 'package:task_management/presentation/pages/boards/widgets/create_project_types.dart';

enum CreateScreenType {
  board,
  task,
}

class CreateScreen extends StatefulWidget {
  const CreateScreen({
    Key? key,
    required this.type,
  }) : super(key: key);

  final CreateScreenType type;

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  late final TextEditingController _titleController;

  @override
  void initState() {
    _titleController = TextEditingController(
      text: widget.type == CreateScreenType.board
          ? LocaleKeys.boards_create_exampleProject.tr()
          : LocaleKeys.tasks_create_exampleTask.tr(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.type == CreateScreenType.board
              ? LocaleKeys.boards_create_title.tr()
              : LocaleKeys.tasks_create_title.tr(),
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
                widget.type == CreateScreenType.board
                    ? LocaleKeys.boards_create_boardType.tr()
                    : LocaleKeys.tasks_create_taskType.tr(),
                style: AppTextTheme.instance!.buildTitleMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 100,
                child: CreateProjectTypes(),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.type == CreateScreenType.board
                    ? LocaleKeys.boards_create_boardDetails.tr()
                    : LocaleKeys.tasks_create_taskDetails.tr(),
                style: AppTextTheme.instance!.buildTitleMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              CreateDetailsColumn(
                type: widget.type,
              ),
              const SizedBox(
                height: 30,
              ),
              CreateButton(
                type: widget.type,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
