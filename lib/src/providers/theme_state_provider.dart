import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final isDarkProvider = FutureProvider<bool>(
  (ref) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final underlyingJSON = jsonDecode(prefs.getString("adaptive_theme_preferences") ?? "{\"theme_mode\":0,\"default_theme_mode\":0}");
    return underlyingJSON["theme_mode"] == 1;
  }
);