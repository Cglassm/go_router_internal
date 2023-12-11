import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_internal/option_a/option_a.dart';

class OptionAView extends StatelessWidget {
  const OptionAView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OptionABloc, OptionAState>(
      listener: (context, state) {
        if (state.status == OptionAStatus.error) {
          // Handle Error
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: const _OptionAWidget(),
      ),
    );
  }
}

class _OptionAWidget extends StatelessWidget {
  const _OptionAWidget();

  @override
  Widget build(BuildContext context) {
    final status = context.select((OptionABloc bloc) => bloc.state.status);

    if (status == OptionAStatus.loading) {
      return const CircularProgressIndicator();
    }
    return const Center(
      child: Text('Option A'),
    );
  }
}
