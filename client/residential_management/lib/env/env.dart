// lib/env/env.dart
// ignore_for_file: constant_identifier_names

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField()
  static const String API_URL = _Env.API_URL;
  @EnviedField()
  static const String API_URL_ANDROID_EMU = _Env.API_URL_ANDROID_EMU;
  @EnviedField()
  static const String API_URL_LAN = _Env.API_URL_LAN;
}
