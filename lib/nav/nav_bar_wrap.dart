import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_internal/app/extensions/extensions.dart';
import 'package:go_router_internal/nav/nav.dart';
import 'package:go_router_ui/go_router_ui.dart';

class NavBarWrap extends StatelessWidget {
  const NavBarWrap({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: BlocProvider(
        create: (context) => NavCubit(),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            child,
            GRNavigationBar(
              children: [
                for (final page in NavPages.values)
                  Builder(
                    builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          context.read<NavCubit>().changePage(page);
                          context.goNamed(page.path);
                        },
                        child: _HomeNavButtonSelector(page: page),
                      );
                    },
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeNavButtonSelector extends StatelessWidget {
  const _HomeNavButtonSelector({required this.page});

  final NavPages page;

  @override
  Widget build(BuildContext context) {
    const iconSize = GRSpacing.lg * 2;
    Widget icon;

    switch (page) {
      case NavPages.home:
        icon = const Icon(
          Icons.home_outlined,
          size: iconSize,
        );
      case NavPages.profile:
        icon = const Icon(
          Icons.person_outline,
          size: iconSize,
        );
      case NavPages.setting:
        icon = const Icon(
          Icons.settings_outlined,
          size: iconSize,
        );
    }

    return GestureDetector(
      onTap: () {
        context.read<NavCubit>().changePage(page);
        context.goNamed(page.path);
      },
      child: _HomeNavButton(page: page, icon: icon),
    );
  }
}

class _HomeNavButton extends StatelessWidget {
  const _HomeNavButton({required this.page, required this.icon});

  final NavPages page;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final current = location.getPageFromPath;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: current == page
            ? [
                Container(
                  padding: const EdgeInsets.all(GRSpacing.xs),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: GRColors.white,
                    border: Border.all(),
                  ),
                  child: icon,
                ),
              ]
            : [icon],
      ),
    );
  }
}
