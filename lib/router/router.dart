import 'package:go_router/go_router.dart';
import 'package:router_sample/pages/error_page.dart';
import 'package:router_sample/pages/home_page.dart';
import 'package:router_sample/pages/login_page.dart';
import 'package:router_sample/pages/second_page.dart';

final router = GoRouter(
  initialLocation: '/',
  errorBuilder: (context, state) => const ErrorPage(),
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
      redirect: (context, state) {
        const isUserLoggedIn = false;

        if (!isUserLoggedIn) {
          return '/login';
        }

        return null;
      },
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/second-page',
      name: 'sec-page',
      builder: (context, state) => SecondPage(
        startCount: state.extra as int,
      ),
    ),
  ],
);
