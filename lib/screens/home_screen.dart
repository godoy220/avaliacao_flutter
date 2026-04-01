import 'package:flutter/material.dart';
import '../models/usuario.dart';
 
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> livros = [
      {'titulo': 'Como Treinar seu Dragão', 'autor': 'Marcos Aurelio'},
      {'titulo': 'Piratas do caribe', 'autor': 'Picasso'},
      {'titulo': 'Mais Esperto que o Diabo', 'autor': 'Vanessa Jones'},
      {'titulo': 'Turma da Mônica', 'autor': 'Robert De Niro'},
      {'titulo': 'O Majestrado', 'autor': 'Erika Hidden'},
    ];
 
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controle de Leitura'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bem-vindo(a), ${usuarioLogadoMock?.nome ?? 'Usuário'}!',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('Últimos 5 livros lidos:'),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: livros.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(livros[index]['titulo']!),
                    subtitle: Text(livros[index]['autor']!),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}