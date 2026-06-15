import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard - MindAcademy')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Último check-in: FOCO', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/checkin'),
              child: const Text('Fazer Check-in Agora'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/map'),
              child: const Text('Ver Mapa de Apoio (Smart HAS)'),
            ),
          ],
        ),
      ),
    );
  }
}
