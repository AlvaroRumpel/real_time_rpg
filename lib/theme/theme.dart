import 'package:flutter/material.dart';

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2b2c2c),
      surfaceTint: Color(0xff5f5e5e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4d4d4d),
      onPrimaryContainer: Color(0xffedeaea),
      secondary: Color(0xff5f5e5e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffbebcbc),
      onSecondaryContainer: Color(0xff2f2f2f),
      tertiary: Color(0xff2c2b2c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4e4d4e),
      onTertiaryContainer: Color(0xffeeeaeb),
      error: Color(0xff720006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffae1818),
      onErrorContainer: Color(0xfffffdff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff1d1b1b),
      onSurfaceVariant: Color(0xff444748),
      outline: Color(0xff747878),
      outlineVariant: Color(0xffc4c7c7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff323030),
      inversePrimary: Color(0xffc8c6c6),
      primaryFixed: Color(0xffe4e2e1),
      onPrimaryFixed: Color(0xff1b1c1c),
      primaryFixedDim: Color(0xffc8c6c6),
      onPrimaryFixedVariant: Color(0xff474747),
      secondaryFixed: Color(0xffe4e2e2),
      onSecondaryFixed: Color(0xff1b1b1c),
      secondaryFixedDim: Color(0xffc8c6c6),
      onSecondaryFixedVariant: Color(0xff474747),
      tertiaryFixed: Color(0xffe5e1e2),
      onTertiaryFixed: Color(0xff1c1b1c),
      tertiaryFixedDim: Color(0xffc9c6c7),
      onTertiaryFixedVariant: Color(0xff474647),
      surfaceDim: Color(0xffdfd9d8),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff9f2f1),
      surfaceContainer: Color(0xfff3ecec),
      surfaceContainerHigh: Color(0xffede7e6),
      surfaceContainerHighest: Color(0xffe7e1e0),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2b2c2c),
      surfaceTint: Color(0xff5f5e5e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4d4d4d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff434343),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff757474),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2c2b2c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4e4d4e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff720006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffae1818),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff1d1b1b),
      onSurfaceVariant: Color(0xff404344),
      outline: Color(0xff5c6060),
      outlineVariant: Color(0xff787b7c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff323030),
      inversePrimary: Color(0xffc8c6c6),
      primaryFixed: Color(0xff757474),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff5c5c5c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff757474),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5c5c5c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff767475),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff5d5b5c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdfd9d8),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff9f2f1),
      surfaceContainer: Color(0xfff3ecec),
      surfaceContainerHigh: Color(0xffede7e6),
      surfaceContainerHighest: Color(0xffe7e1e0),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff222222),
      surfaceTint: Color(0xff5f5e5e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff434343),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff222222),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff434343),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff232223),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff434243),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0003),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff212525),
      outline: Color(0xff404344),
      outlineVariant: Color(0xff404344),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff323030),
      inversePrimary: Color(0xffeeebeb),
      primaryFixed: Color(0xff434343),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2c2d2d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff434343),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2d2d2d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff434243),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2d2c2d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdfd9d8),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff9f2f1),
      surfaceContainer: Color(0xfff3ecec),
      surfaceContainerHigh: Color(0xffede7e6),
      surfaceContainerHighest: Color(0xffe7e1e0),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc8c6c6),
      surfaceTint: Color(0xffc8c6c6),
      onPrimary: Color(0xff303030),
      primaryContainer: Color(0xff353535),
      onPrimaryContainer: Color(0xffc6c4c4),
      secondary: Color(0xffd9d6d6),
      onSecondary: Color(0xff303030),
      secondaryContainer: Color(0xffafadad),
      onSecondaryContainer: Color(0xff232323),
      tertiary: Color(0xffc9c6c7),
      onTertiary: Color(0xff313031),
      tertiaryContainer: Color(0xff363536),
      onTertiaryContainer: Color(0xffc7c4c5),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff870008),
      onErrorContainer: Color(0xffffc9c3),
      surface: Color(0xff151313),
      onSurface: Color(0xffe7e1e0),
      onSurfaceVariant: Color(0xffc4c7c7),
      outline: Color(0xff8e9192),
      outlineVariant: Color(0xff444748),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e1e0),
      inversePrimary: Color(0xff5f5e5e),
      primaryFixed: Color(0xffe4e2e1),
      onPrimaryFixed: Color(0xff1b1c1c),
      primaryFixedDim: Color(0xffc8c6c6),
      onPrimaryFixedVariant: Color(0xff474747),
      secondaryFixed: Color(0xffe4e2e2),
      onSecondaryFixed: Color(0xff1b1b1c),
      secondaryFixedDim: Color(0xffc8c6c6),
      onSecondaryFixedVariant: Color(0xff474747),
      tertiaryFixed: Color(0xffe5e1e2),
      onTertiaryFixed: Color(0xff1c1b1c),
      tertiaryFixedDim: Color(0xffc9c6c7),
      onTertiaryFixedVariant: Color(0xff474647),
      surfaceDim: Color(0xff151313),
      surfaceBright: Color(0xff3b3838),
      surfaceContainerLowest: Color(0xff100e0e),
      surfaceContainerLow: Color(0xff1d1b1b),
      surfaceContainer: Color(0xff211f1f),
      surfaceContainerHigh: Color(0xff2c2929),
      surfaceContainerHighest: Color(0xff373434),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcccaca),
      surfaceTint: Color(0xffc8c6c6),
      onPrimary: Color(0xff161616),
      primaryContainer: Color(0xff919090),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd9d6d6),
      onSecondary: Color(0xff212122),
      secondaryContainer: Color(0xffafadad),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffcdcacb),
      onTertiary: Color(0xff161617),
      tertiaryContainer: Color(0xff929091),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff554a),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff151313),
      onSurface: Color(0xfffff9f9),
      onSurfaceVariant: Color(0xffc8cbcc),
      outline: Color(0xffa0a3a4),
      outlineVariant: Color(0xff808484),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e1e0),
      inversePrimary: Color(0xff484848),
      primaryFixed: Color(0xffe4e2e1),
      onPrimaryFixed: Color(0xff111111),
      primaryFixedDim: Color(0xffc8c6c6),
      onPrimaryFixedVariant: Color(0xff363636),
      secondaryFixed: Color(0xffe4e2e2),
      onSecondaryFixed: Color(0xff111111),
      secondaryFixedDim: Color(0xffc8c6c6),
      onSecondaryFixedVariant: Color(0xff363636),
      tertiaryFixed: Color(0xffe5e1e2),
      onTertiaryFixed: Color(0xff111112),
      tertiaryFixedDim: Color(0xffc9c6c7),
      onTertiaryFixedVariant: Color(0xff373637),
      surfaceDim: Color(0xff151313),
      surfaceBright: Color(0xff3b3838),
      surfaceContainerLowest: Color(0xff100e0e),
      surfaceContainerLow: Color(0xff1d1b1b),
      surfaceContainer: Color(0xff211f1f),
      surfaceContainerHigh: Color(0xff2c2929),
      surfaceContainerHighest: Color(0xff373434),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffdfafa),
      surfaceTint: Color(0xffc8c6c6),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffcccaca),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffdfafa),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffcccaca),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffefafb),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffcdcacb),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff151313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff9fbfb),
      outline: Color(0xffc8cbcc),
      outlineVariant: Color(0xffc8cbcc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e1e0),
      inversePrimary: Color(0xff2a2a2a),
      primaryFixed: Color(0xffe9e6e6),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffcccaca),
      onPrimaryFixedVariant: Color(0xff161616),
      secondaryFixed: Color(0xffe9e6e6),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffcccaca),
      onSecondaryFixedVariant: Color(0xff161617),
      tertiaryFixed: Color(0xffe9e6e7),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffcdcacb),
      onTertiaryFixedVariant: Color(0xff161617),
      surfaceDim: Color(0xff151313),
      surfaceBright: Color(0xff3b3838),
      surfaceContainerLowest: Color(0xff100e0e),
      surfaceContainerLow: Color(0xff1d1b1b),
      surfaceContainer: Color(0xff211f1f),
      surfaceContainerHigh: Color(0xff2c2929),
      surfaceContainerHighest: Color(0xff373434),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
