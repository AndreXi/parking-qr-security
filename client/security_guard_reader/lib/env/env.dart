// lib/env/env.dart
// ignore_for_file: constant_identifier_names

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'API_URL')
  static const String apiUrl = _Env.apiUrl;

  @EnviedField(varName: 'API_URL_ANDROID_EMU')
  static const String apiUrlAndroidEmu = _Env.apiUrlAndroidEmu;

  @EnviedField(varName: 'API_URL_LAN')
  static const String apiUrlLan = _Env.apiUrlLan;
}
