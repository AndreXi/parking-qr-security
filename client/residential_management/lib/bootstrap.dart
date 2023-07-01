import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:residential_management/env/env.dart';
import 'package:residential_management/graphql/graphql_client.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  // Add cross-flavor configuration here
  const apiUrl = Env.apiUrl;
  GetIt.I.registerSingleton<Client>(await initGraphqlClient(apiUrl));

  runApp(await builder());
}
