// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:example/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 테마
/// 폰트
/// - 작은 사이즈 14
/// - 기본 사이즈 18
/// 버튼
/// - 높이 48
/// 텍스트 폼 필드
/// - 높이 기본

const double DEFAULT_FONT_SIZE = 16;
const double DEFAULT_FONT_S_SIZE = 14;

ThemeData theme() => ThemeData(
      fontFamily: "SUIT",
      brightness: Brightness.light,
      splashColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: ColorPath.primaryColor,
      backgroundColor: Colors.white,
      bottomAppBarColor: Colors.white,
      dividerColor: Colors.grey.shade400,
      disabledColor: ColorPath.greyColor,
      // selectedRowColor: ColorPath.primaryColor,
      unselectedWidgetColor: Colors.grey,
      // hintColor: ColorPath.primaryColor,
      // errorColor: ColorPath.errorColor,
      // toggleableActiveColor: ColorPath.primaryColor,
      appBarTheme: appBarThemeData(),
      colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: ColorPath.primaryColor, secondary: ColorPath.secondaryColor),
      textTheme: textThemeData(),
      inputDecorationTheme: inputDecorationThemeData(),
      buttonTheme: buttonThemeData(),
      checkboxTheme: checkboxThemeData(),
      chipTheme: chipThemeData(),
      elevatedButtonTheme: elevatedButtonThemeData(),
      textButtonTheme: textButtonThemeData(),
      bottomSheetTheme: bottomSheetThemeData(),
      textSelectionTheme: textSelectionThemeData(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

// * ExpansionTile 위젯 dividerColor 색상 투명
ThemeData themeExpansionTile() => ThemeData(
      fontFamily: "SUIT",
      brightness: Brightness.light,
      splashColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: ColorPath.primaryColor,
      backgroundColor: Colors.white,
      bottomAppBarColor: Colors.white,
      dividerColor: Colors.transparent,
      disabledColor: ColorPath.greyColor,
      // selectedRowColor: ColorPath.primaryColor,
      unselectedWidgetColor: Colors.grey,
      // hintColor: ColorPath.primaryColor,
      // errorColor: ColorPath.errorColor,
      // toggleableActiveColor: ColorPath.primaryColor,
      appBarTheme: appBarThemeData(),
      colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: ColorPath.primaryColor, secondary: ColorPath.secondaryColor),
      textTheme: textThemeData(),
      inputDecorationTheme: inputDecorationThemeData(),
      buttonTheme: buttonThemeData(),
      checkboxTheme: checkboxThemeData(),
      chipTheme: chipThemeData(),
      elevatedButtonTheme: elevatedButtonThemeData(),
      textButtonTheme: textButtonThemeData(),
      bottomSheetTheme: bottomSheetThemeData(),
      textSelectionTheme: textSelectionThemeData(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

ThemeData darkTheme({required context}) => Theme.of(context).copyWith(
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      primaryColor: ColorPath.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      splashColor: Colors.white,
      bottomAppBarColor: Colors.white,
      dividerColor: Colors.grey.shade400,
      disabledColor: Colors.grey,
      selectedRowColor: ColorPath.primaryColor,
      unselectedWidgetColor: Colors.grey,
      hintColor: ColorPath.primaryColor,
      errorColor: ColorPath.errorColor,
      toggleableActiveColor: ColorPath.primaryColor,
      appBarTheme: appBarThemeData(),
      colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: ColorPath.primaryColor, secondary: ColorPath.secondaryColor),
      textTheme: textThemeData(),
      inputDecorationTheme: inputDecorationThemeData(),
      buttonTheme: buttonThemeData(),
      checkboxTheme: checkboxThemeData(),
      chipTheme: chipThemeData(),
      elevatedButtonTheme: elevatedButtonThemeData(),
      bottomSheetTheme: bottomSheetThemeData(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

AppBarTheme appBarThemeData() => AppBarTheme(
      color: Colors.white,
      foregroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorPath.blackColor, size: 32),
      actionsIconTheme: IconThemeData(color: ColorPath.blackColor, size: 32),
      toolbarHeight: 60,
      toolbarTextStyle: TextTheme(
        bodyText2: TextStyle(color: ColorPath.blackColor, fontSize: 18),
      ).bodyText2,
      titleTextStyle: TextTheme(
        headline6: TextStyle(color: ColorPath.blackColor, fontSize: 18),
      ).headline6,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );

TextSelectionThemeData textSelectionThemeData() => TextSelectionThemeData(
      cursorColor: ColorPath.blackColor,
      selectionColor: ColorPath.blackColor,
      selectionHandleColor: ColorPath.blackColor,
    );

InputDecorationTheme inputDecorationThemeData() => InputDecorationTheme(
      // 상단 라벨
      labelStyle: TextStyle(
        color: Colors.grey.shade400,
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
      // Placeholder
      hintStyle: TextStyle(
        color: ColorPath.placeholder,
        fontSize: DEFAULT_FONT_SIZE,
        fontWeight: FontWeight.normal,
      ),
      // 하단 도움말
      helperStyle: TextStyle(
        color: ColorPath.placeholder,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      // 하단 오류 메세지
      errorStyle: TextStyle(
        color: ColorPath.errorColor,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      iconColor: ColorPath.greyColor,
      prefixIconColor: ColorPath.greyColor,
      prefixStyle: TextStyle(
        color: Colors.grey.shade400,
      ),
      suffixIconColor: ColorPath.greyColor,
      suffixStyle: TextStyle(
        color: Colors.grey.shade400,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      focusColor: ColorPath.blackColor,
      hoverColor: ColorPath.blackColor,
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ColorPath.errorColor, width: 1),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ColorPath.greyColor, width: 1),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ColorPath.errorColor, width: 1),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ColorPath.greyLightColor, width: 1),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ColorPath.greyColor, width: 1),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: ColorPath.greyColor, width: 1),
      ),
    );

TextTheme textThemeData() => TextTheme(
      // displayLarge:
      // displayMedium:,
      // displaySmall:,
      // headlineLarge:,
      // headlineMedium:,
      // headlineSmall:,
      // titleLarge:,
      // titleMedium:,
      // titleSmall:,
      // bodyLarge:,
      // bodyMedium:,
      // bodySmall:,
      // labelLarge:,
      // labelMedium:,
      // labelSmall:,
      headline1: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontSize: 96.0,
        fontWeight: FontWeight.normal,
      ),
      headline2: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontSize: 60.0,
        fontWeight: FontWeight.normal,
      ),
      headline3: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontSize: 48.0,
        fontWeight: FontWeight.normal,
      ),
      headline4: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontSize: 34.0,
        fontWeight: FontWeight.normal,
      ),
      headline5: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontSize: 24.0,
        fontWeight: FontWeight.normal,
      ),
      headline6: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontSize: 20.0,
        fontWeight: FontWeight.normal,
      ),
      subtitle1: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
      ),
      subtitle2: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
      ),
      bodyText1: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontSize: DEFAULT_FONT_SIZE,
        fontWeight: FontWeight.normal,
      ),
      bodyText2: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontSize: DEFAULT_FONT_SIZE,
        fontWeight: FontWeight.normal,
      ),
      caption: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontWeight: FontWeight.normal,
      ),
      button: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontSize: DEFAULT_FONT_SIZE,
        fontWeight: FontWeight.normal,
      ),
      overline: TextStyle(
        fontFamily: "SUIT",
        color: ColorPath.blackColor,
        fontWeight: FontWeight.normal,
      ),
    );

ButtonThemeData buttonThemeData() => ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      buttonColor: ColorPath.blackColor,
      disabledColor: ColorPath.greyColor,
      focusColor: ColorPath.blackColor,
      hoverColor: ColorPath.blackColor,
      highlightColor: ColorPath.blackColor,
      splashColor: ColorPath.blackColor,
    );

ElevatedButtonThemeData elevatedButtonThemeData() => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: ColorPath.primaryColor,
        onSurface: Colors.grey,
      ),
    );

TextButtonThemeData textButtonThemeData() => TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: ColorPath.primaryColor,
        onSurface: Colors.grey,
      ),
    );

BottomSheetThemeData bottomSheetThemeData() => const BottomSheetThemeData(
    backgroundColor: Colors.white, modalBackgroundColor: Colors.white);

CheckboxThemeData checkboxThemeData() => CheckboxThemeData(
      fillColor: MaterialStateProperty.all(ColorPath.primaryColor),
      checkColor: MaterialStateProperty.all(Colors.white),
      overlayColor: MaterialStateProperty.all(Colors.orange),
    );

ChipThemeData chipThemeData() => ChipThemeData(
      backgroundColor: Colors.grey.shade300,
      deleteIconColor: Colors.white,
      disabledColor: Colors.grey,
      selectedColor: ColorPath.primaryColor,
      secondarySelectedColor: ColorPath.primaryColor,
      // Color? shadowColor,
      // Color? selectedShadowColor,
      showCheckmark: true,
      checkmarkColor: Colors.white,
      labelPadding: const EdgeInsets.all(0),
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      // BorderSide? side,
      // OutlinedBorder? shape,
      labelStyle: const TextStyle(color: Colors.white),
      secondaryLabelStyle: const TextStyle(color: Colors.white),
      brightness: Brightness.light,
      elevation: 0.0,
      pressElevation: 0.0,
    );
