part of 'routes.dart';

const homeRoute = AutoRoute(
  path: 'home',
  name: 'HomeTabsRoute',
  page: HomeScreen,
  initial: true,
  children: [
    boardsRoute,
  ],
);

const boardsRoute = AutoRoute(
  path: 'boards',
  name: 'BoardsRouter',
  page: EmptyRouterPage,
  children: [
    AutoRoute(
      path: '',
      page: BoardsScreen,
    ),
    AutoRoute(
      path: 'boardCreate',
      page: BoardCreateScreen,
    ),
    AutoRoute(
      path: 'boardDetail',
      page: BoardDetailScreen,
    )
  ],
);
