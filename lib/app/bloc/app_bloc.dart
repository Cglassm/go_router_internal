import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.initial()) {
    on<AppLoginRequested>(_onLoginRequested);
    on<AppLogoutRequested>(_onLogoutRequested);
  }

  void _onLoginRequested(
    AppLoginRequested event,
    Emitter<AppState> emit,
  ) {
    if (event.username == 'admin' && event.password == 'admin') {
      emit(state.copyWith(isAuthenticated: true));
    } else {
      emit(state.copyWith(isAuthenticated: false));
    }
  }

  void _onLogoutRequested(
    AppLogoutRequested event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(isAuthenticated: false));
  }
}
