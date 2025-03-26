import 'dart:ui';

import 'package:cat_catcher_app/core/theme/color/app_color_scheme.dart';
import 'package:cat_catcher_app/shared/data/service/storage_service.dart';
import 'package:cat_catcher_app/shared/domain/entity/preferences.dart';
import 'package:cat_catcher_app/shared/presentation/providers/storage_service_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_theme.dart';

enum ThemeType { light, dark, brand }

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>(
  (ref) {
    final storageRepository = ref.watch(storageServiceProvider).requireValue;
    return ThemeNotifier(AppTheme(), storageRepository);
  },
);

class ThemeNotifier extends StateNotifier<ThemeData> {
  final AppTheme theme;
  final StorageService storageRepository;

  ThemeNotifier(this.theme, this.storageRepository) : super(theme.light()) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    dynamic savedTheme =
        storageRepository.getKey(Preferences.theme.name, int) ??
            PlatformDispatcher.instance.platformBrightness.index;
    setTheme(ThemeType.values[int.tryParse(savedTheme) ?? 0]);
  }

  void setTheme(ThemeType theme) async {
    switch (theme) {
      case ThemeType.light:
        state = AppTheme.theme(AppColorScheme.lightScheme());
        saveTheme(theme.index);
        break;
      case ThemeType.dark:
        state = AppTheme.theme(AppColorScheme.darkScheme());
        break;
      case ThemeType.brand:
        state = AppTheme.theme(AppColorScheme.brandScheme());
        break;
    }
  }

  saveTheme(int themeIndex) {
    storageRepository.setKey(themeIndex.toString(), int);
  }
}
