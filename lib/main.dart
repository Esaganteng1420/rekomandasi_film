
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const RekomendasiFilmApp());
}

class RekomendasiFilmApp extends StatelessWidget {
  const RekomendasiFilmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rekomendasi Film',

      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121826),

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF59E0B),
          brightness: Brightness.dark,
        ),
      ),

      home: const HomePage(),
    );
  }
}
