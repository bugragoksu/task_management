import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:task_management/presentation/core/router/router.gr.dart';
import 'package:task_management/presentation/core/theme/icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        BoardsRouter(),
        BoardsRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(AppIcons.dashboard),
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.dashboard),
            )
          ],
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}
