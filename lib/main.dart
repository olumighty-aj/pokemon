import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon/screens/home/home_screen.dart';
import 'package:pokemon/services/http_service.dart';

void main() async {
  await _setupServices();
  runApp(const MyApp());
}

Future<void> _setupServices() async {
  GetIt.instance.registerSingleton<HTTpService>(HTTpService());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pokemon',
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
              useMaterial3: true,
              textTheme: GoogleFonts.quattrocentoSansTextTheme()),
          home: const HomeScreen()),
    );
  }
}
