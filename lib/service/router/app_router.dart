import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../export.dart';
import '../../feature/detail/ui/screen/detail_page.dart';
import '../../feature/home/ui/page/home_page.dart';
import '../../feature/main/ui/page/main_tab_navigator.dart';
import '../../feature/setting/ui/page/setting_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _rootNavigatorKey,
      builder: (context, state, child) => AppScaffold(child: child),
      routes: [
        StatefulShellRoute.indexedStack(
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state, navigationShell) {
            return _createPage(
              context,
              state,
              builder: (_) => MainTabNavigator(child: navigationShell),
            );
          },
          branches: [
            StatefulShellBranch(
              routes: [
                AppRoute(
                  MainTab.home.path,
                  (_) => const HomePage(),
                  routes: [
                    AppRoute(
                      'detail',
                      (_) => const DetailPage(),
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                AppRoute(
                  MainTab.settings.path,
                  (_) => const SettingPage(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);

/// Custom GoRoute sub-class to make the router declaration easier to read
class AppRoute extends GoRoute {
  AppRoute(
    String path,
    Widget Function(GoRouterState s) builder, {
    List<GoRoute> routes = const [],
    this.useFade = false,
  }) : super(
          path: path,
          routes: routes,
          pageBuilder: (context, state) {
            final pageContent = Scaffold(
              resizeToAvoidBottomInset: false,
              body: builder(state),
            );
            if (useFade) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: pageContent,
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            }
            return CupertinoPage(child: pageContent);
          },
        );
  final bool useFade;
}

/// Create page with template
Page<dynamic> _createPage(
  BuildContext context,
  GoRouterState state, {
  required Widget Function(GoRouterState s) builder,
  bool useFade = false,
}) {
  final pageContent = Scaffold(
    resizeToAvoidBottomInset: false,
    body: builder(state),
  );
  if (useFade) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: pageContent,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  return CupertinoPage(child: pageContent);
}
