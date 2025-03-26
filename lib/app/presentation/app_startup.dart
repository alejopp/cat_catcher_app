import 'package:cat_catcher_app/app/presentation/providers/app_startup_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppStartup extends ConsumerWidget {
  const AppStartup({
    super.key,
    required this.onLoaded,
  });

  final WidgetBuilder onLoaded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(appStartupProvider);
    return appStartupState.when(
      loading: () => const CircularProgressIndicator(),
      error: (e, st) => Text(e.toString()),
      data: (_) => onLoaded(context),
    );
  }
}
