import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_internal/home/home.dart';
import 'package:go_router_internal/profile/profile.dart';
import 'package:go_router_internal/settings/settings.dart';

part 'nav_state.dart';

class NavCubit extends Cubit<NavPages> {
  NavCubit() : super(NavPages.home);

  void changePage(NavPages page) {
    emit(page);
  }
}
