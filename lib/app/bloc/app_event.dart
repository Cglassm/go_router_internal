part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object?> get props => [];
}

class AppLoginRequested extends AppEvent {
  const AppLoginRequested(this.username, this.password);

  final String username;
  final String password;

  @override
  List<Object?> get props => [username, password];
}

class AppLogoutRequested extends AppEvent {}
