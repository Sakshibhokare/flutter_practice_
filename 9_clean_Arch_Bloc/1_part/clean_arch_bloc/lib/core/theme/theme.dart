//theme will be accessible for entire app 
import 'package:clean_arch_bloc/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static _border([Color color =AppPallete.borderColor])=> OutlineInputBorder( //_vName means a private variable which can be accessed withing the same class 
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10)
      );

  static final darkThemeMode= ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient1) //when we click on it 
    )
  );
}      