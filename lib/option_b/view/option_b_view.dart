import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_internal/option_b/option_b.dart';

class OptionBView extends StatelessWidget {
  const OptionBView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OptionBBloc, OptionBState>(
      listener: (context, state) {
        if (state.status == OptionBStatus.error) {
          // Handle Error
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: const _OptionBWidget(),
      ),
    );
  }
}

class _OptionBWidget extends StatelessWidget {
  const _OptionBWidget();

  @override
  Widget build(BuildContext context) {
    final status = context.select((OptionBBloc bloc) => bloc.state.status);

    if (status == OptionBStatus.loading) {
      return const CircularProgressIndicator();
    }
    return const Center(
      child: Text('Option B'),
    );
  }
}
