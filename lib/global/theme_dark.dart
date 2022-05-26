import 'package:flutter/material.dart';
import 'package:thememode/global/colors.dart';
import 'package:thememode/global/size.dart';

final ThemeData darkThemeDefault = _buildDarkThemeDefault();

ThemeData _buildDarkThemeDefault() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    // Base
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: MyColor.body,
    colorScheme: base.colorScheme.copyWith(
      brightness: Brightness.dark,
      primary: MyColor.accentBlue,
      error: MyColor.error,
    ),
    dividerTheme: const DividerThemeData(
      color: MyColor.border,
      thickness: 1,
      space: 0,
    ),
    // Navigation
    appBarTheme: base.appBarTheme.copyWith(
      elevation: 1,
      backgroundColor: MyColor.surface,
      iconTheme: const IconThemeData(
        color: MyColor.surfaceAlt,
      ),
    ),
    bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
      backgroundColor: MyColor.surface,
      unselectedItemColor: MyColor.surfaceAlt,
      selectedItemColor: MyColor.accentBlue,
    ),
    // Buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: MyColor.accentBlue,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Space.radius),
        ),
      ),
    ),
    // Card
    cardTheme: base.cardTheme.copyWith(
      color: MyColor.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Space.radius),
        side: const BorderSide(
          color: MyColor.border,
          width: 1,
        ),
      ),
    ),
    /*
    Example for application: 
    Text("Title large", style: Theme.of(context).textTheme.titleLarge,),
    */
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 57),
      displayMedium: TextStyle(fontSize: 45),
      displaySmall: TextStyle(fontSize: 36),
      headlineLarge: TextStyle(fontSize: 32),
      headlineMedium: TextStyle(fontSize: 28),
      headlineSmall: TextStyle(fontSize: 24),
      titleLarge: TextStyle(fontSize: 20),
      titleMedium: TextStyle(fontSize: 16),
      titleSmall: TextStyle(fontSize: 14),
      bodyLarge: TextStyle(fontSize: 16),
      bodyMedium: TextStyle(fontSize: 14),
      bodySmall: TextStyle(fontSize: 12),
      // Size type of button
      labelLarge: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(fontSize: 12),
      labelSmall: TextStyle(fontSize: 11),
    ).apply(
      bodyColor: MyColor.white,
      displayColor: MyColor.grey,
    ),
  );
}
