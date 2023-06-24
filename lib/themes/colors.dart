import 'package:flutter/material.dart';


abstract class AppGradientColors {


}


 abstract class AppMaterialColors {
 static MaterialColor primary = const MaterialColor(
    0xFFC30E48,
    <int, Color>{
      50: Color(0xFFFEE3E9),
      100: Color(0xFFFBB9C8),
      200: Color(0xFFF88CA3),
      300: Color(0xFFF35E7f),
      400: Color(0xFFED3C65),
      500: Color(0xFFE81B4C),
      600: Color(0xFFD8154A),
      700: Color(0xFFC30E48),
      800: Color(0xFFAF0445),
      900: Color(0xFF8C0040),
    },
  );

 static MaterialColor secondary = const MaterialColor(
    0xFF1ABC9C,
    <int, Color>{
      50: Color(0xFFDCF3EE),
      100: Color(0xFFAAE2D4),
      200: Color(0xFF6FD0B8),
      300: Color(0xFF1ABC9C),
      400: Color(0xFF00AD87),
      500: Color(0xFF009C74),
      600: Color(0xFF008F68),
      700: Color(0xFF007F58),
      800: Color(0xFF006F4B),
      900: Color(0xFF00522F),
    },
  );
}



abstract class AppColors {
  static Color primary = const Color(0xFFC30E48);
  static Color primarySelection = const Color(0xFFDD628A);
  static Color onPrimary = Colors.white;
  static Color haloOnPrimary = const Color(0x33FFFFFF);
  static Color primaryAlternate = const Color(0xFFDD4D42);
  static Color onPrimaryAlternate = Colors.white;
  static Color secondary = const Color(0xFF1ABC9C);
  static Color onSecondary = Colors.white;
  static Color surface = Colors.white;
  static Color onSurface = const Color(0xFF454545);
 static Color scaffold =  const Color(0xFFF5F8FE);
  static  Color onScaffold = const Color(0xFF454545);
  static Color border = const Color(0xFFE5EBF8);
  static Color controlNormal = const Color(0xFFD2D8E5);
  static Color label = const Color(0xFF959499);
  static Color disabled = const Color(0xFF959499);
  static Color focusedText = Colors.black;
  static Color subtitleText = const Color(0xFFA7A9B4);
  static Color boldText = const Color(0xFF212121);
  static Color success = const Color(0xFF3ED2C0);
  static Color successVariant = const Color(0xFF78C14B);
  static Color shadow = Colors.black;
  static Color warning = const Color(0xFFFFD9E5);
  static Color error = const Color(0xFFED4C67);

  static Color dashboard = const Color(0xFFDC6088);
  static Color intakeCalorie = const Color(0xFF6536FF);
  static Color burnedCalorie = const Color(0xFF6536FF);
  static  Color totalCalorie = const Color(0xFF20E0A5);
  static Color activity = const Color(0xFF20E0A5);
  static Color foodPyramid = const Color(0xFF27C6ED);
  static Color nature = const Color(0xFFB620E1);
  static Color progressDefault = const Color(0xFFF2F2FB);
  static Color breakfast = const Color(0xFFFD996E);
  static Color morningSnackMeal = const Color(0xFF31D4DD);
  static Color lunch = const Color(0xFF86A9EE);
  static Color eveningSnackMeal = const Color(0xFF0ECD77);
  static Color dinnerMeal = const Color(0xFFF98F8E);
  static Color water = const Color(0xFF407BFF);
  static Color currentWeight = const Color(0xFFC30E48);
  static Color goal = const Color(0xFF4B85FF);
  static Color targetWeight = const Color(0xFF31CC70);
  static Color initialWeight = const Color(0xFFED4D66);
  static Color healthWeight = const Color(0xFF1ABC9C);
  static Color idealWeight = const Color(0xFF9B59B6);
  static Color goodWeight = const Color(0xFF3498DB);
  static Color checkbox = const Color(0xFF00AAA1);
  static Color ruler = const Color(0xFFC4C4C4);
  static Color heightPreference = const Color(0xFF7063F2);
  static Color genderPreference = const Color(0xFFF6B90B);
  static Color agePreference = const Color(0xFFF46C36);
  static Color wristPreference = const Color(0xFF4B85FF);
  static Color weightPreference = const Color(0xFF3AB95C);
  static Color skeleton = const Color(0xFFF39C12);
  static Color bmi = const Color(0xFF38ADA9);
  static Color sickness = const Color(0xFF706FD3);
  static Color diet = const Color(0xFFD2DEF9);
  static Color ticket = const Color(0xFF314CA5);
  static Color ticketClosed = const Color(0xFF484B60);
  static Color ticketInProgress = const Color(0xFFF1C40F);
  static Color ticketAnswered = const Color(0xFF1ABC9C);
  static Color exchange = const Color(0xFFee2e61);
  static Color exchangeShadow = const Color(0xFF032055);
  static Color circleCheckbox = const Color(0xFFF9E7ED);
  static Color unitImage = const Color(0xFFC30E48);
  static Color commentCard = const Color(0xFFF5F8FE);
  static Color responseCard = const Color(0xFFE5EBF8);
  static Color foodSuggestionInProgress = const Color(0xFFFFC312);
  static Color inactiveWave = const Color(0xFFDADBE6);
}



