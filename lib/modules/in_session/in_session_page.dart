import 'package:flutter/material.dart';

import '../../models/rpg_table_model.dart';

class InSessionPage extends StatelessWidget {
  final String id;
  final RpgTableModel? table;
  const InSessionPage({super.key, required this.id, required this.table});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Em Sessão'),
      ),
      body: Text(table?.tableCode ?? ''),
    );
  }
}
