import 'package:auto_route/auto_route.dart';
import 'package:muscii/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/', page: HomeRoute.page),
    AutoRoute(
      path: '/login',
      page: LoginRoute.page,
      type: musciiTransitionSlideRight),
    AutoRoute(
      path: '/sign-up',
      page: SignUpRoute.page,
      type: musciiTransitionSlideLeft),
    AutoRoute(path: '/profile', page: ProfileRoute.page),
    AutoRoute(path: '/leaderboard', page: LeaderboardRoute.page),
    AutoRoute(path: '/game', page: GameRoute.page,
      type: const RouteType.material()
    ),
    AutoRoute(path: '/game-test', page: TestGameRoute.page,
      type: const RouteType.material()
    ),
  ];
}

const musciiTransitionSlideLeft = RouteType.custom(
  transitionsBuilder: TransitionsBuilders.slideLeft,
  durationInMilliseconds: 200,
  reverseDurationInMilliseconds: 200,
);

const musciiTransitionSlideRight = RouteType.custom(
  transitionsBuilder: TransitionsBuilders.slideRight,
  durationInMilliseconds: 200,
  reverseDurationInMilliseconds: 200,
);