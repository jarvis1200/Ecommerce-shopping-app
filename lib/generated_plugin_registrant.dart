//
// Generated file. Do not edit.
//

// ignore: unused_import
import 'dart:ui';

import 'package:fluttertoast/fluttertoast_web.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart';
import 'package:shared_preferences_web/shared_preferences_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins(PluginRegistry registry) {
  FluttertoastWebPlugin.registerWith(registry.registrarFor(FluttertoastWebPlugin));
  GoogleSignInPlugin.registerWith(registry.registrarFor(GoogleSignInPlugin));
  SharedPreferencesPlugin.registerWith(registry.registrarFor(SharedPreferencesPlugin));
  registry.registerMessageHandler();
}
