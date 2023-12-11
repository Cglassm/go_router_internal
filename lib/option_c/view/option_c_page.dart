import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_internal/option_c/option_c.dart';

class OptionCPage extends StatelessWidget {
  const OptionCPage({super.key});

  static const path = '/option_c';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OptionCBloc(),
      child: const OptionCView(),
    );
  }
}
