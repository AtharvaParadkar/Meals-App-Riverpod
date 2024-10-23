import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app_riverpod/screens/tabs.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromARGB(255, 200, 0, 255),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);
final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 200, 0, 255),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(
    //^ To use the provider we need to wrap the main entry widget with ProviderScope
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const TabsScreen(),
    );
  }
}
