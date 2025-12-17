import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shaolin_planner_new/i18n/strings.g.dart';

part 'locale_provider.g.dart';

@Riverpod(keepAlive: true)
class LocaleNotifier extends _$LocaleNotifier {
  @override
  AppLocale build() {
    // Return the current locale from Slang
    return LocaleSettings.currentLocale;
  }

  /// Updates the locale and notifies listeners.
  /// Also updates the global Slang LocaleSettings.
  void setLocale(AppLocale locale) {
    LocaleSettings.setLocale(locale);
    state = locale;
  }

  /// Convenience method to switch to English
  void setEnglish() => setLocale(AppLocale.en);

  /// Convenience method to switch to German
  void setGerman() => setLocale(AppLocale.de);
}
