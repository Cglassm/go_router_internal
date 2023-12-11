import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const SettingsState.initial()){
    on<SettingsEvent>(_onSettingsEvent);
  }

  void _onSettingsEvent(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) {}
}