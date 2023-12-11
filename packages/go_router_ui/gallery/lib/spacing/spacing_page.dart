import 'package:go_router_ui/go_router_ui.dart';
import 'package:flutter/material.dart';

class SpacingPage extends StatelessWidget {
  const SpacingPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SpacingPage());
  }

  @override
  Widget build(BuildContext context) {
    const spacingList = [
      _SpacingItem(spacing: GRSpacing.xxxs, name: 'xxxs'),
      _SpacingItem(spacing: GRSpacing.xxs, name: 'xxs'),
      _SpacingItem(spacing: GRSpacing.xs, name: 'xs'),
      _SpacingItem(spacing: GRSpacing.sm, name: 'sm'),
      _SpacingItem(spacing: GRSpacing.md, name: 'md'),
      _SpacingItem(spacing: GRSpacing.lg, name: 'lg'),
      _SpacingItem(spacing: GRSpacing.xlg, name: 'xlg'),
      _SpacingItem(spacing: GRSpacing.xxlg, name: 'xxlg'),
      _SpacingItem(spacing: GRSpacing.xxxlg, name: 'xxxlg'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Spacing')),
      body: ListView.builder(
        itemCount: spacingList.length,
        itemBuilder: (_, index) => spacingList[index],
      ),
    );
  }
}

class _SpacingItem extends StatelessWidget {
  const _SpacingItem({required this.spacing, required this.name});

  final double spacing;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(GRSpacing.sm),
      child: Row(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                color: GRColors.black,
                width: GRSpacing.xxs,
                height: GRSpacing.lg,
              ),
              Container(
                width: spacing,
                height: GRSpacing.lg,
                color: GRColors.skyBlue,
              ),
              Container(
                color: GRColors.black,
                width: GRSpacing.xxs,
                height: GRSpacing.lg,
              ),
            ],
          ),
          const SizedBox(width: GRSpacing.sm),
          Text(name),
        ],
      ),
    );
  }
}
