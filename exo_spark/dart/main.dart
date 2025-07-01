import 'package:flutter/material.dart';
import 'package:exo_spark/views/exo_prompt/exo_dual_bridge.dart';
import 'package:exo_spark/views/practitioner/practitioner_dashboard.dart';

void main() {
  runApp(const ExoSparkApp());
}

class ExoSparkApp extends StatelessWidget {
  const ExoSparkApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Toggle this flag to switch between DEV and PROD screens
    const bool devMode = true;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Courier',
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: devMode
          ? PractitionerDashboard(practitionerId: 'test_id') // 👈 DEV screen
          : const ExoDualBridge(), // 👈 PROD bridge entry point
    );
  }
}
