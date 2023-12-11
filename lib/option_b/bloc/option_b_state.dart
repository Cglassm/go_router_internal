part of 'option_b_bloc.dart';

enum OptionBStatus {
  initial,
  loading,
  loaded,
  error,
}

final class OptionBState extends Equatable {
  const OptionBState({
    required this.status,
  });

  const OptionBState.initial()
      : this(        
          status: OptionBStatus.initial,
        );

  final OptionBStatus status;

  OptionBState copyWith({
    OptionBStatus? status,
  }) {
    return OptionBState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
