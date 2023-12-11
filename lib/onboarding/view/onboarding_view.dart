import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_internal/home/view/home_page.dart';
import 'package:go_router_ui/go_router_ui.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GROutlinedButton.secondary(
          text: 'go home',
          onPressed: () => context.push(HomePage.path),
        ),
      ),
    );
  }
}
