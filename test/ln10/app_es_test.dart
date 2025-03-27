import 'dart:convert';
import 'dart:io';

import 'package:cat_catcher_app/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Map<String, dynamic> jsonMap;

  setUp(() async {
    final path = '${Directory.current.path}/lib/l10n/app_es.json';
    final jsonString = File(path).readAsStringSync();
    jsonMap = jsonDecode(jsonString);
  });

  group('spanish strings verification', () {
    test('All values in AppStrings match the spanish JSON file', () {
      final enumKeys = AppStrings.values.map((e) => e.name).toSet();
      final jsonKeys = jsonMap.keys.toSet();

      final missingKeys = enumKeys.difference(jsonKeys);

      if (missingKeys.isNotEmpty) {
        debugPrint('Missing keys json [Lang ES]:\n${missingKeys.join('\n')}');
      }

      expect(missingKeys, isEmpty,
          reason: 'Missing keys json [Lang ES]: $missingKeys');
    });

    test('All values in JSON match the AppString file', () {
      final enumKeys = AppStrings.values.map((e) => e.name).toSet();
      debugPrint(enumKeys.toString());
      final jsonKeys = jsonMap.keys.toSet();

      final missingKeys = jsonKeys.difference(enumKeys);
      debugPrint(missingKeys.toString());

      if (missingKeys.isNotEmpty) {
        debugPrint('Missing keys in AppStrings:\n${missingKeys.join('\n')}');
      }

      expect(missingKeys, isEmpty,
          reason: 'Missing keys in AppString]: $missingKeys');
    });
  });
}
