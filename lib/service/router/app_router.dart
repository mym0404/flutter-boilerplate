import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../export.dart';
import '../../feature/detail/ui/screen/detail_page.dart';
import '../../feature/home/ui/page/home_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => AppScaffold(child: child),
      routes: [
        AppRoute(
          '/',
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
