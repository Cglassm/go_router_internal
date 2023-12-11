import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'option_b_event.dart';
part 'option_b_state.dart';

class OptionBBloc extends Bloc<OptionBEvent, OptionBState> {
  OptionBBloc() : super(const OptionBState.initial()) {
    on<OptionBEvent>(_onOptionBEvent);
  }

  void _onOptionBEvent(
    OptionBEvent event,
    Emitter<OptionBState> emit,
  ) {}
}
