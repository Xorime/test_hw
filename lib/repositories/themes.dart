import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class Themes {
  Themes._();

  factory Themes.instance() => _instance;

  static final Themes _instance = Themes._();

  // ThemeData get theme => Get.isDarkMode ? _lightTheme() : _darkTheme();
  ThemeData get theme => _lightTheme();
  // ButtonStyle get buttonFlatPrimary => _buttonFlatPrimaryLight();
  // ButtonStyle get buttonFlatGrey => _buttonFlatGreyLight();
  // ButtonStyle get buttonElevatedWhite => _elevatedButtonWhiteLight();

  ThemeData _lightTheme() {
    return ThemeData(
        primaryColor: color_primary,
        brightness: Brightness.light,
        scaffoldBackgroundColor: color_bg,
        backgroundColor: color_bg,
        appBarTheme: _appbarLight(),
        floatingActionButtonTheme: _fabLight(),
        primarySwatch: MaterialColor(color_primary.value, _getSwatch(color_primary)),
        elevatedButtonTheme: _elevatedButtonLight(),
        textButtonTheme: _textButtonLight(),
        inputDecorationTheme: _inputDark(),
        // bottomNavigationBarTheme: _bottomnavLight(),
        // cardTheme: _cardLight(),
        // bottomSheetTheme: _bottomSheetLight(),
        textTheme: GoogleFonts.poppinsTextTheme(
          const TextTheme(
            headline1: headline1,
            headline2: headline2,
            headline3: headline3,
            bodyText1: bodyText1,
            bodyText2: bodyText2,
            subtitle1: subtitle1,
            // caption: ,
          ).apply(displayColor: color_text),
        ));
  }

  // Floating action button
  FloatingActionButtonThemeData _fabLight() {
    return const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: color_primary,
    );
  }

  FloatingActionButtonThemeData _fabDark() {
    return const FloatingActionButtonThemeData(foregroundColor: Colors.white, backgroundColor: color_primary);
  }

  // App bar theme
  AppBarTheme _appbarLight() {
    return AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: bodyText1.copyWith(color: color_text),
      elevation: elevation,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      foregroundColor: Colors.grey[400],
    );
  }

  // Elevated button
  ElevatedButtonThemeData _elevatedButtonLight() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: bodyText1.copyWith(fontWeight: FontWeight.w600),
        primary: color_primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        minimumSize: const Size(double.infinity, button_height),
        elevation: elevation,
        shadowColor: Colors.grey[700],
      ),
    );
  }

  // Text button
  TextButtonThemeData _textButtonLight() {
    return TextButtonThemeData(
        style: TextButton.styleFrom(
      textStyle: button,
      primary: color_primary,
    ));
  }

  // Input theme

  InputDecorationTheme _inputDark() {
    return InputDecorationTheme(
      labelStyle: bodyText1.copyWith(color: color_text_secondary),
      floatingLabelStyle: bodyText1.copyWith(color: color_primary),
      contentPadding: const EdgeInsets.symmetric(horizontal: padding_s, vertical: padding_s),
      focusColor: color_primary,
      isDense: true,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }

  // Helper
  Map<int, Color> _getSwatch(Color color) {
    final hslColor = HSLColor.fromColor(color);
    final lightness = hslColor.lightness;

    const _lowDivisor = 6;
    const _highDivisor = 5;

    final lowStep = (1.0 - lightness) / _lowDivisor;
    final highStep = lightness / _highDivisor;

    return {
      50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
      100: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
      200: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
      300: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
      400: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
      500: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
      600: (hslColor.withLightness(lightness + lowStep)).toColor(),
      700: (hslColor.withLightness(lightness)).toColor(),
      800: (hslColor.withLightness(lightness - highStep)).toColor(),
      900: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
      // 800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
      // 900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
    };
  }
}
