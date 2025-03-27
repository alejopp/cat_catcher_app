// final FutureProvider<StorageService> storageServiceProvider =
//     FutureProvider<StorageService>((ref) async {
//   final prefs = await SharedPreferencesWithCache.create(
//     cacheOptions: SharedPreferencesWithCacheOptions(
//       allowList: <String>{
//         Preferences.theme.name,
//       }, // Allowed keys
//     ),
//   );
//   return StorageServiceImplementation(prefs);
// });
