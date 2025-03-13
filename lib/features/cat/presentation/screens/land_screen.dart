import 'package:cat_catcher_app/features/cat/presentation/providers/cat_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catState = ref.watch(catNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Cat Breeds")),
      body: catState.when(
        data: (cats) => ListView.builder(
          itemCount: cats.length,
          itemBuilder: (context, index) {
            final cat = cats[index];
            return ListTile(
              title: Text(cat.name),
              subtitle: Text(cat.origin),
              leading: Image.network(
                cat.image?.url ?? '',
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.image_not_supported);
                },
              ),
            );
          },
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text("Error: $error")),
      ),
    );
  }
}
