import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../auth_gate.dart';
import '../../features/animatedSplash/ui/splash_screen.dart';
import '../../features/auth/ui/verify_email_screen.dart';
import '../../features/cart/ui/cart_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/profile/ui/profile_screen.dart';
import '../../features/reminder/ui/reminder_screen.dart';
import '../../features/search/ui/search_screen.dart';

import '../../features/onBoarding/onboarding_screen.dart';

import 'wrapper.dart';

class AppPath {
  AppPath._();
  static const String splash = '/';
  static const String onBoarding = '/onBoarding';
  static const String authGate = '/authGate';
  static const String verifyEmail = '/verifyEmail';
  static const String home = "/home";
  static const String search = "/search";
  static const String cart = "/cart";
  static const String reminders = "/reminders";
  static const String account = "/account";
}

class AppPathName {
  AppPathName._();
  static const String splash = "Splash";
  static const String onBoarding = "OnBoarding";
  static const String authGate = "AuthGate";
  static const String verifyEmail = "VerifyEmail";
  static const String home = "Home";
  static const String search = "Search";
  static const String cart = "Cart";
  static const String reminders = "Reminders";
  static const String account = "Account";
}

class AppNavigation {
  AppNavigation._();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHome = GlobalKey<NavigatorState>();
  static final _shellNavigatorSearch = GlobalKey<NavigatorState>();
  static final _shellNavigatorCart = GlobalKey<NavigatorState>();
  static final _shellNavigatorReminders = GlobalKey<NavigatorState>();
  static final _shellNavigatorAccount = GlobalKey<NavigatorState>();

  // GoRouter configuration
  static final GoRouter router = GoRouter(
    initialLocation: AppPath.splash,
    debugLogDiagnostics: false,
    navigatorKey: _rootNavigatorKey,
    routes: [
      /// MainWrapper
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainWrapper(navigationShell: navigationShell);
        },
        branches: <StatefulShellBranch>[
          /// Branch Home
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHome,
            routes: <RouteBase>[
              GoRoute(
                path: AppPath.home,
                name: AppPathName.home,
                builder: (BuildContext context, GoRouterState state) =>
                    const HomeScreen(),
              ),
            ],
          ),

          /// Branch Search
          StatefulShellBranch(
            navigatorKey: _shellNavigatorSearch,
            routes: <RouteBase>[
              GoRoute(
                path: AppPath.search,
                name: AppPathName.search,
                builder: (BuildContext context, GoRouterState state) =>
                    const SearchScreen(),
              ),
            ],
          ),

          /// Branch Cart
          StatefulShellBranch(
            navigatorKey: _shellNavigatorCart,
            routes: <RouteBase>[
              GoRoute(
                path: AppPath.cart,
                name: AppPathName.cart,
                builder: (BuildContext context, GoRouterState state) =>
                    const CartScreen(),
              ),
            ],
          ),

          /// Branch Reminders
          StatefulShellBranch(
            navigatorKey: _shellNavigatorReminders,
            routes: <RouteBase>[
              GoRoute(
                path: AppPath.reminders,
                name: AppPathName.reminders,
                builder: (BuildContext context, GoRouterState state) =>
                    const ReminderScreen(),
              ),
            ],
          ),

          /// Branch Account
          StatefulShellBranch(
            navigatorKey: _shellNavigatorAccount,
            routes: <RouteBase>[
              GoRoute(
                path: AppPath.account,
                name: AppPathName.account,
                builder: (BuildContext context, GoRouterState state) =>
                    const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),

      /// Splash Screen
      GoRoute(
        path: AppPath.splash,
        name: AppPathName.splash,
        builder: (BuildContext context, GoRouterState state) =>
            const SplashScreen(),
      ),

      /// Onboarding Screen
      GoRoute(
        path: AppPath.onBoarding,
        name: AppPathName.onBoarding,
        builder: (BuildContext context, GoRouterState state) =>
            const OnboardingScreen(),
      ),

      /// Verify Email Screen
      GoRoute(
        path: AppPath.verifyEmail,
        name: AppPathName.verifyEmail,
        builder: (BuildContext context, GoRouterState state) {
          final email = state.uri.queryParameters['email'] ?? '';
          return VerifyEmailScreen(email: email);
        },
      ),

      /// Auth Gate
      GoRoute(
        path: AppPath.authGate,
        name: AppPathName.authGate,
        builder: (BuildContext context, GoRouterState state) =>
            const AuthGate(),
      ),
    ],
  );
}
