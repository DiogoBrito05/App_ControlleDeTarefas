import 'package:app_pessoal/ui/interface/home.dart';
import 'package:app_pessoal/ui/interface/login.dart';
import 'package:app_pessoal/ui/interface/registration.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const AgendadorDeTarefas());
}

class AgendadorDeTarefas extends StatelessWidget {
  const AgendadorDeTarefas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner de debug
      title: 'App Pessoal',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Define a cor primária do tema
      ),
      routes: {
        "login": (context) => const Login(),
        "register": (context) => const RegistroUsuario(),
        "home": (context) => const HomeScreen(), 
      },
      initialRoute: "login", // Rota inicial do aplicativo
    );
  }
}