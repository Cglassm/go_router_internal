import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_internal/app/app.dart';
import 'package:go_router_internal/app/router/router.dart';
import 'package:go_router_internal/l10n/l10n.dart';
import 'package:go_router_ui/go_router_ui.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: MaterialApp.router(
        theme: GRTheme().lightTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: AppRouter.router(),
      ),
    );
  }
}
