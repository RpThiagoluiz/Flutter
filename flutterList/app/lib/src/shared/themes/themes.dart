import 'package:flutter/material.dart';
part 'color_schemes.g.dart';

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      colorScheme: _lightColorScheme,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: _lightColorScheme.secondaryContainer,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _lightColorScheme.primary,
        foregroundColor: Colors.white,
      ),
      segmentedButtonTheme: _segmentedButtonTheme,
    );

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: _darkColorScheme,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: _darkColorScheme.secondaryContainer,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _lightColorScheme.primary,
      ),
      segmentedButtonTheme: _segmentedButtonTheme,
    );

// ele será chamado dentro do segmentedButtonTheme, seria uma abstração para evitar uma repetição.
SegmentedButtonThemeData get _segmentedButtonTheme => SegmentedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith<TextStyle?>((states) {
          // Gerenciando o estado de estilo quando vc seleciona pelo selector
          if (states.contains(MaterialState.selected)) {
            return const TextStyle(
              fontSize: 10,
            );
          }
          return const TextStyle(
            fontSize: 14,
          );
        }),
      ),
    );
