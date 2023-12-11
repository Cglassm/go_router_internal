part of 'option_c_bloc.dart';

enum OptionCStatus {
  initial,
  loading,
  loaded,
  error,
}

final class OptionCState extends Equatable {
  const OptionCState({
    required this.status,
  });

  const OptionCState.initial()
      : this(        
          status: OptionCStatus.initial,
        );

  final OptionCStatus status;

  OptionCState copyWith({
    OptionCStatus? status,
  }) {
    return OptionCState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
