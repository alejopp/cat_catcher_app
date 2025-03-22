import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Color get surfaceColor => Theme.of(this).colorScheme.surface;
  Color get inverseSurfaceColor => Theme.of(this).colorScheme.inverseSurface;
}
