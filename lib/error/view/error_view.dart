import 'package:flutter/material.dart';
import 'package:go_router_ui/go_router_ui.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  static const path = '/error';

  @override
  Widget build(BuildContext context) {
    return const ErrorView();
  }
}

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Error'),
      ),
    );
  }
}
