import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'option_a_event.dart';
part 'option_a_state.dart';

class OptionABloc extends Bloc<OptionAEvent, OptionAState> {
  OptionABloc() : super(const OptionAState.initial()){
    on<OptionAEvent>(_onOptionAEvent);
  }

  void _onOptionAEvent(
    OptionAEvent event,
    Emitter<OptionAState> emit,
  ) {}
}
