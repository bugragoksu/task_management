// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i7;

import '../../pages/auth/auth_screen.dart' as _i2;
import '../../pages/dashboard/dashboard_screen.dart' as _i6;
import '../../pages/home/home_screen.dart' as _i5;
import '../../pages/splash/auth_state_router.dart' as _i1;
import '../../pages/splash/splash_screen.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AuthStateRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthStateRouter());
    },
    AuthRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthScreen());
    },
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SplashScreen());
    },
    MainAppRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.EmptyRouterPage(),
          transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    HomeTabsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomeScreen());
    },
    DashboardRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    DashBoardScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DashBoardScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(AuthStateRouter.name, path: '/', children: [
          _i4.RouteConfig(AuthRoute.name,
              path: 'auth', parent: AuthStateRouter.name),
          _i4.RouteConfig(SplashRoute.name,
              path: 'splash', parent: AuthStateRouter.name),
          _i4.RouteConfig(MainAppRoute.name,
              path: 'main',
              parent: AuthStateRouter.name,
              children: [
                _i4.RouteConfig('#redirect',
                    path: '',
                    parent: MainAppRoute.name,
                    redirectTo: 'home',
                    fullMatch: true),
                _i4.RouteConfig(HomeTabsRoute.name,
                    path: 'home',
                    parent: MainAppRoute.name,
                    children: [
                      _i4.RouteConfig(DashboardRouter.name,
                          path: 'dashboard',
                          parent: HomeTabsRoute.name,
                          children: [
                            _i4.RouteConfig(DashBoardScreenRoute.name,
                                path: '', parent: DashboardRouter.name)
                          ])
                    ])
              ])
        ])
      ];
}

/// generated route for
/// [_i1.AuthStateRouter]
class AuthStateRouter extends _i4.PageRouteInfo<void> {
  const AuthStateRouter({List<_i4.PageRouteInfo>? children})
      : super(AuthStateRouter.name, path: '/', initialChildren: children);

  static const String name = 'AuthStateRouter';
}

/// generated route for
/// [_i2.AuthScreen]
class AuthRoute extends _i4.PageRouteInfo<void> {
  const AuthRoute() : super(AuthRoute.name, path: 'auth');

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i3.SplashScreen]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: 'splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class MainAppRoute extends _i4.PageRouteInfo<void> {
  const MainAppRoute({List<_i4.PageRouteInfo>? children})
      : super(MainAppRoute.name, path: 'main', initialChildren: children);

  static const String name = 'MainAppRoute';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeTabsRoute extends _i4.PageRouteInfo<void> {
  const HomeTabsRoute({List<_i4.PageRouteInfo>? children})
      : super(HomeTabsRoute.name, path: 'home', initialChildren: children);

  static const String name = 'HomeTabsRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class DashboardRouter extends _i4.PageRouteInfo<void> {
  const DashboardRouter({List<_i4.PageRouteInfo>? children})
      : super(DashboardRouter.name,
            path: 'dashboard', initialChildren: children);

  static const String name = 'DashboardRouter';
}

/// generated route for
/// [_i6.DashBoardScreen]
class DashBoardScreenRoute extends _i4.PageRouteInfo<void> {
  const DashBoardScreenRoute() : super(DashBoardScreenRoute.name, path: '');

  static const String name = 'DashBoardScreenRoute';
}
