import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'option_c_event.dart';
part 'option_c_state.dart';

class OptionCBloc extends Bloc<OptionCEvent, OptionCState> {
  OptionCBloc() : super(const OptionCState.initial()){
    on<OptionCEvent>(_onOptionCEvent);
  }

  void _onOptionCEvent(
    OptionCEvent event,
    Emitter<OptionCState> emit,
  ) {}
}
