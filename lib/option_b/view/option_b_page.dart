import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_internal/option_b/option_b.dart';

class OptionBPage extends StatelessWidget {
  const OptionBPage({super.key});

  static const path = '/option_b';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OptionBBloc(),
      child: const OptionBView(),
    );
  }
}
