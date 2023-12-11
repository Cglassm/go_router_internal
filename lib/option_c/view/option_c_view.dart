import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_internal/option_c/option_c.dart';

class OptionCView extends StatelessWidget {
  const OptionCView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OptionCBloc, OptionCState>(
      listener: (context, state) {
        if (state.status == OptionCStatus.error) {
          // Handle Error
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: const _OptionCWidget(),
      ),
    );
  }
}

class _OptionCWidget extends StatelessWidget {
  const _OptionCWidget();

  @override
  Widget build(BuildContext context) {
    final status = context.select((OptionCBloc bloc) => bloc.state.status);

    if (status == OptionCStatus.loading) {
      return const CircularProgressIndicator();
    }
    return const Center(
      child: Text('Option C'),
    );
  }
}
