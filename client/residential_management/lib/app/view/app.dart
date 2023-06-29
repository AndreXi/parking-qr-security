import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:residential_management/l10n/l10n.dart';
import 'package:residential_management/navigation/navigation.dart';
import 'package:residential_management/router/router.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: MaterialApp.router(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.transparent),
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.grey,
            accentColor: const Color(0xFF13B9FF),
          ),
          fontFamily: 'Inter',
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
