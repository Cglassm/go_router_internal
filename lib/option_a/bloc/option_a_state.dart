part of 'option_a_bloc.dart';

enum OptionAStatus {
  initial,
  loading,
  loaded,
  error,
}

final class OptionAState extends Equatable {
  const OptionAState({
    required this.status,
  });

  const OptionAState.initial()
      : this(        
          status: OptionAStatus.initial,
        );

  final OptionAStatus status;

  OptionAState copyWith({
    OptionAStatus? status,
  }) {
    return OptionAState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
