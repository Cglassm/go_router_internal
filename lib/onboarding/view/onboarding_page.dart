import 'package:flutter/material.dart';
import 'package:go_router_internal/onboarding/onboarding.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  static const path = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return const OnboardingView();
  }
}
