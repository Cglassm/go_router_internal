import 'package:go_router_internal/home/home.dart';
import 'package:go_router_internal/nav/nav.dart';
import 'package:go_router_internal/profile/profile.dart';
import 'package:go_router_internal/settings/settings.dart';

extension StringPathParser on String {
  NavPages? get getPageFromPath {
    if (contains(HomePage.path)) {
      return NavPages.home;
    } else if (contains(ProfilePage.path)) {
      return NavPages.profile;
    } else if (contains(SettingsPage.path)) {
      return NavPages.setting;
    }
    return null;
  }
}
