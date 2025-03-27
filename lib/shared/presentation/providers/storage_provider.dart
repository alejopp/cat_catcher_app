import 'package:cat_catcher_app/shared/data/service/storage_service.dart';
import 'package:cat_catcher_app/shared/data/service/storage_service_impl.dart';
import 'package:cat_catcher_app/shared/domain/entity/preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final FutureProvider<StorageService> storageProvider =
    FutureProvider<StorageService>((ref) async {
  final prefs = await SharedPreferencesWithCache.create(
    cacheOptions: SharedPreferencesWithCacheOptions(
      // When an allowlist is included, any keys that aren't included cannot be used.
      allowList: <String>{
        Preferences.theme.name,
        Preferences.language.name,
      },
    ),
  );
  return StorageServiceImpl(prefs);
});
