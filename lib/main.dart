import 'package:flutter/material.dart';
import 'package:expenses/widgets/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 208, 255));

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        iconTheme: IconThemeData(
          color: kColorScheme.primary,
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.normal,
            color: kColorScheme.onPrimaryContainer,
            fontSize: 18,
          ),
          bodyLarge: TextStyle(color: kColorScheme.onPrimaryContainer),
          bodyMedium: TextStyle(color: kColorScheme.onPrimaryContainer),
          headlineLarge: TextStyle(color: kColorScheme.primary),
        ),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: CardTheme(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shadowColor: kColorScheme.shadow,
          elevation: 2,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
              elevation: 3,
              textStyle: const TextStyle(
                fontSize: 16,
              )),
        ),
      ),
      home: const Expenses(),
    ),
  );
}
