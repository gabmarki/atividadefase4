import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import 'screens/home_screen.dart';
import 'screens/checkin_screen.dart';
import 'screens/crisis_screen.dart';
import 'screens/map_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp() simulado aqui
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const SmartHasApp(),
    ),
  );
}

class SmartHasApp extends StatelessWidget {
  const SmartHasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart HAS - MindAcademy',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/checkin': (context) => const CheckinScreen(),
        '/crisis': (context) => const CrisisScreen(),
        '/map': (context) => const MapScreen(),
      },
    );
  }
}
