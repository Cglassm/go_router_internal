import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_internal/error/error.dart';
import 'package:go_router_internal/home/home.dart';
import 'package:go_router_internal/loading/loading.dart';
import 'package:go_router_internal/nav/nav.dart';
import 'package:go_router_internal/onboarding/onboarding.dart';
import 'package:go_router_internal/option_a/view/view.dart';
import 'package:go_router_internal/option_b/view/view.dart';
import 'package:go_router_internal/option_c/view/view.dart';
import 'package:go_router_internal/profile/profile.dart';
import 'package:go_router_internal/settings/view/view.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final homeNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static GoRouter router() {
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: HomePage.path,
      // redirect: (context, state) async {
      //   // final isLoadingUser = AuthStreamScope.of(context).isLoadingUser;
      //   // if (isLoadingUser) {
      //   //   return LoadingPage.path;
      //   // }

      //   // final isAuthenticated = AuthStreamScope.of(context).isSignedIn;
      //   // final isUnauthenticated = AuthStreamScope.of(context).isSignedOut;
      //   // final isOnSignedOutView = unauthenticatedRoutes.contains(
      //   //   state.fullPath,
      //   // );
      //   // final isOnSignUpView = signUpRoutes.contains(state.fullPath);
      //   // final isOnLoadingView = LoadingPage.path == state.fullPath;
      //   // final isOnUnauthenticatedView = isOnSignedOutView || isOnSignUpView;

      //   // if (isAuthenticated && (isOnSignedOutView || isOnLoadingView)) {
      //   //   return HomePage.path;
      //   // } else if (isAuthenticated && isOnSignUpView) {
      //   //   return null;
      //   // } else if (isUnauthenticated && isOnUnauthenticatedView) {
      //   //   return null;
      //   // } else if (isUnauthenticated) {
      //   //   return OnboardingPage.path;
      //   // }

      //   return null;
      // },
      routes: [
        GoRoute(
          path: LoadingPage.path,
          name: LoadingPage.path,
          builder: (context, state) => const LoadingPage(),
        ),
        GoRoute(
          path: OnboardingPage.path,
          name: OnboardingPage.path,
          builder: (context, state) => const OnboardingPage(),
        ),
        ShellRoute(
          navigatorKey: homeNavigatorKey,
          builder: (context, state, child) {
            return NavBarWrap(child: child);
          },
          routes: [
            GoRoute(
              path: HomePage.path,
              name: HomePage.path,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  name: state.fullPath,
                  child: const HomePage(),
                );
              },
            ),
            GoRoute(
              path: SettingsPage.path,
              name: SettingsPage.path,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  name: state.fullPath,
                  child: const SettingsPage(),
                );
              },
            ),
            GoRoute(
              path: ProfilePage.path,
              name: ProfilePage.path,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  name: state.fullPath,
                  child: const ProfilePage(),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: OptionAPage.path,
          name: OptionAPage.path,
          builder: (context, state) => const OptionAPage(),
        ),
        GoRoute(
          path: OptionBPage.path,
          name: OptionBPage.path,
          builder: (context, state) => const OptionBPage(),
        ),
        GoRoute(
          path: OptionCPage.path,
          name: OptionCPage.path,
          builder: (context, state) => const OptionCPage(),
        ),
      ],
      errorPageBuilder: (context, state) {
        return const NoTransitionPage(
          child: ErrorPage(),
        );
      },
    );
  }
}
