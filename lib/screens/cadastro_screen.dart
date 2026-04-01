import 'package:flutter/material.dart';
import '../models/usuario.dart';
import 'login_screen.dart';
 
class CadastroScreen extends StatefulWidget {
  const CadastroScreen({super.key});
 
  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}
 
class _CadastroScreenState extends State<CadastroScreen> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
 
  void _cadastrar() {
    if (_nomeController.text.isEmpty || _emailController.text.isEmpty || _senhaController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Preencha todos os campos')));
      return;
    }
 
    usuarioLogadoMock = Usuario(
      nome: _nomeController.text,
      email: _emailController.text,
      senha: _senhaController.text,
    );
 
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: _nomeController, decoration: const InputDecoration(labelText: 'Nome')),
            TextField(controller: _emailController, decoration: const InputDecoration(labelText: 'Email')),
            TextField(controller: _senhaController, obscureText: true, decoration: const InputDecoration(labelText: 'Senha')),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _cadastrar, child: const Text('Cadastrar')),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
              },
              child: const Text('Já tem conta? Fazer Login'),
            )
          ],
        ),
      ),
    );
  }
}