import 'package:flutter/material.dart';
import '../models/transacao.dart';

class TransacaoCard extends StatelessWidget {
  final Transacao transacao;

  const TransacaoCard({super.key, required this.transacao});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(transacao.descricao),
      ),
    );
  }
}
