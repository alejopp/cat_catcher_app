import 'package:cat_catcher_app/shared/data/service/storage_service.dart';
import 'package:cat_catcher_app/shared/data/service/storage_service_impl.dart';
import 'package:cat_catcher_app/shared/domain/entity/preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final FutureProvider<StorageService> storageServiceProvider =
    FutureProvider<StorageService>((ref) async {
  final prefs = await SharedPreferencesWithCache.create(
    cacheOptions: SharedPreferencesWithCacheOptions(
      allowList: <String>{
        Preferences.theme.name,
      }, // Allowed keys
    ),
  );
  return StorageServiceImplementation(prefs);
});
