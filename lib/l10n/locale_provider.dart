import 'package:cat_catcher_app/shared/domain/entity/preferences.dart';
import 'package:cat_catcher_app/shared/presentation/providers/storage_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier(ref);
});

class LocaleNotifier extends StateNotifier<Locale> {
  final Ref _ref;

  LocaleNotifier(this._ref) : super(Locale('es', '')) {
    loadLocale();
  }

  void loadLocale() async {
    final prefs = await _ref.read(storageProvider.future);
    final String language =
        await prefs.getKey<String>(Preferences.language.name) ?? 'es';
    setLocale(Locale(language));
  }

  void setLocale(Locale value, {bool save = false}) async {
    final prefs = await _ref.read(storageProvider.future);
    if (save) {
      await prefs.setKey(Preferences.language.name, value.languageCode);
    }
    state = value;
  }
}
