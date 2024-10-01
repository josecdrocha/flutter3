import 'package:flutter/material.dart';
import 'screens/formulario_screen.dart';

void main() {
  runApp(const BancoApp());
}

class BancoApp extends StatelessWidget {
  const BancoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormularioScreen(),
    );
  }
}
