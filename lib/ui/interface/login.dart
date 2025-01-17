import 'package:app_pessoal/ui/styles/cores.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: AppColor.second, // Fundo preto
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 128),
                Image.asset(
                  "assets/images/caderno1.png",
                  width: 160,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 32),
                    const Text(
                      //"Controle de Tarefas",
                      "ℂ𝕠𝕟𝕥𝕣𝕠𝕝𝕖 𝕕𝕖 𝕋𝕒𝕣𝕖𝕗𝕒𝕤",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        color: AppColor.first, // Texto em branco para contraste
                      ),
                    ),
                    const SizedBox(height: 32),
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
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, "home");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.fourth,
                            ),
                            child: const Text(
                              "Entrar",
                              style: TextStyle(color: AppColor.first),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "register");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.fifth,
                            ),
                            child: const Text(
                              "Cadastrar",
                              style: TextStyle(color: AppColor.first),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
