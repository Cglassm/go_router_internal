part of 'nav_cubit.dart';

enum NavPages {
  home,
  profile,
  setting;

  String get path {
    switch (this) {
      case NavPages.home:
        return HomePage.path;
      case NavPages.profile:
        return ProfilePage.path;
      case NavPages.setting:
        return SettingsPage.path;
    }
  }
}
