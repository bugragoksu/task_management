part of 'routes.dart';

const homeRoute = AutoRoute(
  path: 'home',
  name: 'HomeTabsRoute',
  page: HomeScreen,
  initial: true,
  children: [
    dashboardRoute,
  ],
);

const dashboardRoute = AutoRoute(
  path: 'dashboard',
  name: 'DashboardRouter',
  page: EmptyRouterPage,
  children: [
    AutoRoute(
      path: '',
      page: DashBoardScreen,
    )
  ],
);
