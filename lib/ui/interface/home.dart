import 'package:app_pessoal/ui/styles/cores.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
        title: const Text("Home", style: TextStyle(color: AppColor.first),),
        backgroundColor: AppColor.fourth,
        iconTheme: const IconThemeData(
          color: AppColor.first, 
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: AppColor.second, // Fundo preto para o menu lateral
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: AppColor.fourth,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Menu",
                      style: TextStyle(
                        color: AppColor.first,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.list, color: AppColor.first),
                title: const Text(
                  "Ver Tarefas",
                  style: TextStyle(color: AppColor.first),
                ),
                onTap: () {
                  // Ação ao clicar em "Ver Tarefas"
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.add, color: AppColor.first),
                title: const Text(
                  "Adicionar Tarefa",
                  style: TextStyle(color: AppColor.first),
                ),
                onTap: () {
                  // Ação ao clicar em "Adicionar Tarefa"
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.bar_chart, color: AppColor.first),
                title: const Text(
                  "Ver Métricas por Tarefas",
                  style: TextStyle(color: AppColor.first),
                ),
                onTap: () {
                  // Ação ao clicar em "Ver Métricas por Tarefas"
                  Navigator.pop(context);
                },
              ),
              const Divider(color: AppColor.first), // Linha divisória
              ListTile(
                leading: const Icon(Icons.exit_to_app, color: Colors.red),
                title: const Text(
                  "Sair",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  // Navegar para a página de login
                  Navigator.pushReplacementNamed(context, "login");
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor:  AppColor.friday, // Fundo cinza escuro
      body: Center(
        child: const Text(
          "Bem-vindo à Home!",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
