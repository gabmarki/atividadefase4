import 'package:flutter/material.dart';

class CheckinScreen extends StatelessWidget {
  const CheckinScreen({super.key});

  void _analyzeSentiment(BuildContext context) {
    // Simulação da chamada da Cloud Function (NLP)
    // Direciona para a tela de crise para simular cenário crítico
    Navigator.pushReplacementNamed(context, '/crisis');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Check-in Emocional')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Como você está se sentindo agora?', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Escreva com suas palavras...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _analyzeSentiment(context),
              child: const Text('Analisar Sentimento via IA'),
            ),
          ],
        ),
      ),
    );
  }
}
