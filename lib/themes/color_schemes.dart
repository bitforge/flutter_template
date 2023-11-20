import 'package:flutter/material.dart';

// Basic initial Material 3 color theme
//
// Start with a Material theme builder:
// - Offical Theme Builder (Google): https://m3.material.io/theme-builder
// - Appainter (Has color palettes): https://appainter.dev
//
// Also check the official Figma Material 3 Desgin Kit:
// https://www.figma.com/community/file/1035203688168086460
//

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFB80F55),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFD9DF),
  onPrimaryContainer: Color(0xFF3F0018),
  secondary: Color(0xFF75565C),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFD9DF),
  onSecondaryContainer: Color(0xFF2B151A),
  tertiary: Color(0xFF984061),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFD9E2),
  onTertiaryContainer: Color(0xFF3E001D),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF201A1B),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF201A1B),
  surfaceVariant: Color(0xFFF3DDE0),
  onSurfaceVariant: Color(0xFF524346),
  outline: Color(0xFF847375),
  onInverseSurface: Color(0xFFFAEEEF),
  inverseSurface: Color(0xFF352F30),
  inversePrimary: Color(0xFFFFB1C2),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFB80F55),
  outlineVariant: Color(0xFFD6C2C4),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB1C2),
  onPrimary: Color(0xFF66002B),
  primaryContainer: Color(0xFF8F003F),
  onPrimaryContainer: Color(0xFFFFD9DF),
  secondary: Color(0xFFE4BDC4),
  onSecondary: Color(0xFF43292F),
  secondaryContainer: Color(0xFF5B3F45),
  onSecondaryContainer: Color(0xFFFFD9DF),
  tertiary: Color(0xFFFFB0C8),
  onTertiary: Color(0xFF5E1133),
  tertiaryContainer: Color(0xFF7B2949),
  onTertiaryContainer: Color(0xFFFFD9E2),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF201A1B),
  onBackground: Color(0xFFECE0E0),
  surface: Color(0xFF201A1B),
  onSurface: Color(0xFFECE0E0),
  surfaceVariant: Color(0xFF524346),
  onSurfaceVariant: Color(0xFFD6C2C4),
  outline: Color(0xFF9E8C8F),
  onInverseSurface: Color(0xFF201A1B),
  inverseSurface: Color(0xFFECE0E0),
  inversePrimary: Color(0xFFB80F55),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFFB1C2),
  outlineVariant: Color(0xFF524346),
  scrim: Color(0xFF000000),
);
