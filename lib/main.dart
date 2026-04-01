import 'package:flutter/material.dart';
import 'screens/cadastro_screen.dart';
 
void main() {
  runApp(const AvaliacaoApp());
}
 
class AvaliacaoApp extends StatelessWidget {
  const AvaliacaoApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Controle de Leitura',
      home: CadastroScreen(),
    );
  }
}