import 'package:flutter/material.dart';
import 'package:go_router_ui/go_router_ui.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  static const path = '/loading_user';

  @override
  Widget build(BuildContext context) {
    return const LoadingView();
  }
}

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: GRColors.black,
        ),
      ),
    );
  }
}
