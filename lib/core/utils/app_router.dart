import 'package:booklyapp/feature/Splash/presentation/views/splash_view.dart';
import 'package:booklyapp/feature/home/presentation/view/details_page.dart';
import 'package:booklyapp/feature/home/presentation/view/home_page.dart';
import 'package:booklyapp/feature/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static const String kDetailsView = '/detailsView';
  static const String kHomeView = '/homeView';
  static const String kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: kSplashView,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },

        // routes: <RouteBase>[],
      ),
      GoRoute(
        path: kDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return const DetailsPage();
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
