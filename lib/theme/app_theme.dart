import 'package:flutter/material.dart';
import 'package:flutter_test_app/theme/text_style.dart';

class AppTheme{
  static ThemeData dataTheme(BuildContext context){
    final screenWidth = MediaQuery.of(context).size.width;
    return ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.white,
        ),
        cardColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white, 
          iconTheme: IconThemeData(
            color: Colors.black,
            size: screenWidth * 0.06, 
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: screenWidth * 0.05,
          ),
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'SFProDisplay',
        textTheme: TextTheme(
          bodyMedium: AppTextStyles1.regular.copyWith(
            fontSize: screenWidth * 0.045, 
          ),
          bodyLarge: AppTextStyles1.bold.copyWith(
            fontSize: screenWidth * 0.05, 
          ),
        ),
      );
  }
}