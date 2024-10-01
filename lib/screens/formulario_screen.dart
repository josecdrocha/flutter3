import 'package:flutter/material.dart';
import '../models/transacao.dart';
import '../widgets/transacao_card.dart';

class FormularioScreen extends StatefulWidget {
  const FormularioScreen({super.key});

  @override
  _FormularioScreenState createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {
  final List<Transacao> _transacoes = [];
  final TextEditingController _controller = TextEditingController();

  void _adicionarTransacao() {
    final String descricao = _controller.text;
    if (descricao.isNotEmpty) {
      setState(() {
        _transacoes.add(Transacao(descricao));
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de Transações'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText: 'Descrição da Transação',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: _adicionarTransacao,
            child: const Text('Adicionar Transação'),
          ),
          const SizedBox(height: 20),
          const Text(
            'Transações:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ..._transacoes.map((transacao) {
            return TransacaoCard(transacao: transacao);
          }),
        ],
      ),
    );
  }
}
