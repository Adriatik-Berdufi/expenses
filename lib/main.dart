import 'package:flutter/material.dart';
import 'package:expenses/widgets/expenses.dart';
/* import 'package:flutter/services.dart'; */

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 208, 255));
var darkColor = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 0, 1, 50),
    brightness: Brightness.dark);
void main() {
  //lock app rotated
/*   WidgetsFlutterBinding();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) { */
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: darkColor,
        cardTheme: CardTheme(
          color: darkColor.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shadowColor: Colors.white,
          elevation: 1,
        ),
        iconTheme: IconThemeData(
          color: darkColor.primary,
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: darkColor.onPrimaryContainer,
            fontSize: 16,
          ),
          bodyLarge: TextStyle(color: darkColor.onPrimaryContainer),
          bodyMedium: TextStyle(color: darkColor.onPrimaryContainer),
          headlineLarge: TextStyle(color: darkColor.primary),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: darkColor.primaryContainer,
              shadowColor: Colors.white,
              elevation: 1,
              textStyle: const TextStyle(
                fontSize: 16,
              )),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        iconTheme: IconThemeData(
          color: kColorScheme.primary,
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorScheme.onPrimaryContainer,
            fontSize: 16,
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
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
/*   }); */
}
