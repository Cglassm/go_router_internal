import 'package:flutter/material.dart';
import 'package:go_router_ui/go_router_ui.dart';

class GRNavigationBar extends StatelessWidget {
  const GRNavigationBar({required this.children, super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: GRSpacing.lg),
      decoration: const BoxDecoration(
        color: GRColors.white,
        border: Border(
          top: BorderSide(), // This line is changed
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: GRSpacing.xxxxlg,
      child: ClipRRect(
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: children,
          ),
        ),
      ),
    );
  }
}
