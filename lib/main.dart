import 'package:flutter/material.dart';
import 'widgets/top_bar.dart'; // Make sure this path matches your actual file location

void main() {
  runApp(const EcoBridgeApp());
}

class EcoBridgeApp extends StatelessWidget {
  const EcoBridgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoBridge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1A1A1A),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFAA8D52), // golden
          brightness: Brightness.dark,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _onMenuTap() {
    // Your menu button action
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(onMenuTap: _onMenuTap),
      body: const Center(
        child: Text(
          'Welcome to EcoBridge!',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xFFAA8D52),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
