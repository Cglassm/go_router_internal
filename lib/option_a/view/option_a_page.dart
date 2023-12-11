import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_internal/option_a/option_a.dart';

class OptionAPage extends StatelessWidget {
  const OptionAPage({super.key});

  static const path = '/option_a';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OptionABloc(),
      child: const OptionAView(),
    );
  }
}
