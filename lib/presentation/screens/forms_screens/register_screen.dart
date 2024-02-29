import 'package:flutter/material.dart';
import 'package:forms_app/presentation/widgets/_export_widgets.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Usuario'),
        leading: BackButton(
          onPressed: () => context.go('/'),
        ),
      ),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterLogo(size: 100),
              SizedBox(height: 20),
              _RegisterForm(),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFieldWidget(label: 'Usuario'),
        const SizedBox(height: 20),
        TextFieldWidget(label: 'Correo'),
        const SizedBox(height: 20),
        TextFieldWidget(label: 'Contraseña', isObscure: true),
        FilledButton.tonalIcon(
            onPressed: () => {},
            icon: const Icon(Icons.save),
            label: const Text('Registrar')),
      ],
    ));
  }
}
