import 'package:cat_catcher_app/shared/presentation/providers/storage_provider.dart';
import 'package:cat_catcher_app/shared/presentation/providers/storage_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStartupProvider = FutureProvider<void>((ref) async {
  ref.onDispose(() {
    ref.invalidate(storageProvider);
  });
  await ref.watch(storageServiceProvider.future);
});
