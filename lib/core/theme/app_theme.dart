import "package:cat_catcher_app/core/theme/color/app_color_scheme.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class AppTheme {
  const AppTheme();

  ThemeData light() {
    return theme(AppColorScheme.lightScheme());
  }

  ThemeData dark() {
    return theme(AppColorScheme.darkScheme());
  }

  ThemeData brand() {
    return theme(AppColorScheme.brandScheme());
  }

  static ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: createTextTheme('Montserrat', 'Montserrat', colorScheme),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  static TextTheme createTextTheme(
    String bodyFontString,
    String displayFontString,
    ColorScheme colorScheme,
  ) {
    TextTheme baseTextTheme = TextTheme(
        titleMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ));
    TextTheme bodyTextTheme =
        GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
    TextTheme displayTextTheme =
        GoogleFonts.getTextTheme(displayFontString, baseTextTheme);

    TextTheme textTheme = displayTextTheme.copyWith(
      bodyLarge: bodyTextTheme.bodyLarge,
      bodyMedium: bodyTextTheme.bodyMedium,
      bodySmall: bodyTextTheme.bodySmall,
      labelLarge: bodyTextTheme.labelLarge,
      labelMedium: bodyTextTheme.labelMedium,
      labelSmall: bodyTextTheme.labelSmall,
    );
    textTheme.apply(
      displayColor: colorScheme.onSurface,
      bodyColor: colorScheme.onSurface,
    );
    return textTheme;
  }
}
