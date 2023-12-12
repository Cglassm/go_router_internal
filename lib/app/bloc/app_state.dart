part of 'app_bloc.dart';

enum AppStatus {
  initial,
  loading,
  loaded,
  error,
}

final class AppState extends Equatable {
  const AppState({
    required this.status,
    this.isAuthenticated = false,
  });

  const AppState.initial()
      : this(
          status: AppStatus.initial,
        );

  final AppStatus status;
  final bool isAuthenticated;

  AppState copyWith({
    AppStatus? status,
    bool? isAuthenticated,
  }) {
    return AppState(
      status: status ?? this.status,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
    );
  }

  @override
  List<Object> get props => [
        status,
        isAuthenticated,
      ];
}
