import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_internal/option_a/view/view.dart';
import 'package:go_router_internal/option_b/view/view.dart';
import 'package:go_router_internal/option_c/view/view.dart';
import 'package:go_router_internal/profile/profile.dart';
import 'package:go_router_ui/go_router_ui.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.status == ProfileStatus.error) {
          // Handle Error
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: GRSpacing.lg,
            vertical: GRSpacing.xlg,
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    _ListTile(
                      text: 'Option A',
                      onTap: () {
                        context.push(OptionAPage.path);
                      },
                    ),
                    _ListTile(
                      text: 'Option B',
                      onTap: () {
                        context.push(OptionBPage.path);
                      },
                    ),
                    _ListTile(
                      text: 'Option C',
                      onTap: () {
                        context.push(OptionCPage.path);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile({
    required this.onTap,
    required this.text,
  });

  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        textAlign: TextAlign.left,
        style: GRTextStyle.button.copyWith(
          color: GRColors.black,
          decoration: TextDecoration.underline,
          decorationColor: GRColors.black,
          height: 0.05,
        ),
      ),
      onTap: onTap,
    );
  }
}
