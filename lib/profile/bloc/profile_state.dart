part of 'profile_bloc.dart';

enum ProfileStatus {
  initial,
  loading,
  loaded,
  error,
}

final class ProfileState extends Equatable {
  const ProfileState({
    required this.status,
  });

  const ProfileState.initial()
      : this(        
          status: ProfileStatus.initial,
        );

  final ProfileStatus status;

  ProfileState copyWith({
    ProfileStatus? status,
  }) {
    return ProfileState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
