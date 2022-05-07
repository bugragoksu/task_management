//ignore_for_file: implicit_dynamic_type
import 'package:auto_route/auto_route.dart';
import 'package:task_management/presentation/core/router/routes/routes.dart';
import 'package:task_management/presentation/pages/auth/auth_screen.dart';
import 'package:task_management/presentation/pages/splash/auth_state_router.dart';
import 'package:task_management/presentation/pages/splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(
      path: '/',
      name: 'AuthStateRouter',
      page: AuthStateRouter,
      children: [
        AutoRoute(
          path: 'auth',
          name: 'AuthRoute',
          page: AuthScreen,
        ),
        AutoRoute(
          path: 'splash',
          name: 'SplashRoute',
          page: SplashScreen,
        ),
        CustomRoute(
          path: 'main',
          name: 'MainAppRoute',
          page: EmptyRouterPage,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          children: [
            homeRoute,
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
