import 'package:app_pessoal/ui/styles/cores.dart';
import 'package:flutter/material.dart';

class RegistroUsuario extends StatelessWidget {
  const RegistroUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro de Usuário"),
        backgroundColor: AppColor.fifth,
      ),
      backgroundColor: AppColor.friday,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),
            const Text(
              "Crie sua conta",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: AppColor.first,
              ),
            ),
            const SizedBox(height: 32),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Nome de Usuário"),
                labelStyle: TextStyle(color: AppColor.first),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.first),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.first),
                ),
              ),
              style: const TextStyle(color: AppColor.first),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("E-mail"),
                labelStyle: TextStyle(color: AppColor.first),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.first),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.first),
                ),
              ),
              style: const TextStyle(color: AppColor.first),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                label: Text("Senha"),
                labelStyle: TextStyle(color: AppColor.first),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.first),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.first),
                ),
              ),
              style: const TextStyle(color: AppColor.first),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Aqui você pode implementar a lógica de registro
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.fifth,
              ),
              child: const Text(
                "Cadastrar-se",
                style: TextStyle(color: AppColor.first),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
