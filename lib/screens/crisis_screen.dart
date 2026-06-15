import 'package:flutter/material.dart';

class CrisisScreen extends StatelessWidget {
  const CrisisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        title: const Text('Intervenção de Emergência'),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false, // Bloqueia o botão de voltar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('VOCÊ NÃO ESTÁ SOZINHO(A)', 
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red)),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.phone),
              label: const Text('Ligar para o CVV - 188'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
              onPressed: () { /* Simula integração com discador */ },
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.chat),
              label: const Text('Chat Psicopedagogia FIAP'),
              onPressed: () { /* Simula redirecionamento */ },
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
              child: const Text('Estou seguro agora - Voltar'),
            )
          ],
        ),
      ),
    );
  }
}
