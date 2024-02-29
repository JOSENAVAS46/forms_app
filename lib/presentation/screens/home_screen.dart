import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text('Cubit'),
            subtitle: const Text('Gestor de estado Simple'),
            leading: const Icon(Icons.view_in_ar),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () => context.go('/cubits'),
          ),
          ListTile(
            title: const Text('BLoC'),
            subtitle: const Text('Gestor de estado Compuesto'),
            leading: const Icon(Icons.view_comfy),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () => context.go('/blocs'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(),
          ),
          ListTile(
            title: const Text('Registrar Usuario'),
            subtitle: const Text('Registrar Usuario con Manejo de Formularios'),
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () => context.go('/register'),
          ),
        ],
      ),
    );
  }
}
