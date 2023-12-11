import 'package:go_router_ui/go_router_ui.dart';
import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const TextFieldPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Field',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(GRSpacing.lg),
        child: Column(
          children: [
            GRTextField.emailTextField(
              onChanged: (_) {},
            ),
            const SizedBox(height: GRSpacing.sm),
            GRTextField.passwordTextField(
              onChanged: (_) {},
            ),
            const SizedBox(height: GRSpacing.sm),
            GRTextField(
              hintText: 'Default text field',
              onChanged: (_) {},
            ),
          ],
        ),
      ),
    );
  }
}
