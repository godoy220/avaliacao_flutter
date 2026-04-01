import 'package:flutter/material.dart';
import '../models/usuario.dart';
import 'home_screen.dart';
 
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
 
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
 
class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
 
  void _entrar() {
    if (usuarioLogadoMock == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Nenhum usuário cadastrado.')));
      return;
    }
 
    if (_emailController.text == usuarioLogadoMock!.email && _senhaController.text == usuarioLogadoMock!.senha) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Email ou senha incorretos.')));
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: _emailController, decoration: const InputDecoration(labelText: 'Email')),
            TextField(controller: _senhaController, obscureText: true, decoration: const InputDecoration(labelText: 'Senha')),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _entrar, child: const Text('Entrar')),
            TextButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: const Text('Voltar para Cadastro'),
            )
          ],
        ),
      ),
    );
  }
}