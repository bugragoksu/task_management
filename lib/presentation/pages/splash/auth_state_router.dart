import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_management/presentation/core/router/router.gr.dart';

class AuthStateRouter extends StatefulWidget implements AutoRouteWrapper {
  const AuthStateRouter({Key? key}) : super(key: key);

  @override
  State<AuthStateRouter> createState() => _AuthStateRouterState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _AuthStateRouterState extends State<AuthStateRouter> {
  @override
  Widget build(BuildContext context) {
    return AutoRouter.declarative(
      routes: (BuildContext context) {
        return const [
          MainAppRoute(),
        ];
      },
    );
  }
}
