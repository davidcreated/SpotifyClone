import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  // Method to update the current theme
  void updateTheme(ThemeMode themeMode) => emit(themeMode);

  // Deserialize the saved theme from storage
  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final themeString = json['theme'] as String?;
    switch (themeString) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
        return ThemeMode.system;
      default:
        return ThemeMode.system;
    }
  }

  // Serialize the theme mode to a JSON map
  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {
      'theme': state.toString().split('.').last, // light, dark, or system
    };
  }
}
