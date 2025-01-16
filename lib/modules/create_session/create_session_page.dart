import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/assets.dart';
import '../../utils/extensions.dart';

class CreateSessionPage extends StatefulWidget {
  const CreateSessionPage({super.key});

  @override
  State<CreateSessionPage> createState() => _CreateSessionPageState();
}

class _CreateSessionPageState extends State<CreateSessionPage> {
  final _codeController = TextEditingController();

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(24),
          width: context.width * .5,
          child: Column(
            spacing: 24,
            children: [
              Image.asset(Assets.dice, height: 140),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: context.color.primaryContainer,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  spacing: 16,
                  children: [
                    Text(
                      'Digite código de acesso',
                      style: context.textTheme.titleLarge,
                    ),
                    TextFormField(
                      controller: _codeController,
                      decoration: InputDecoration(labelText: 'Código'),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 5,
                    ),
                    SizedBox(
                      width: context.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Entrar'),
                      ),
                    ),
                    SizedBox(
                      width: context.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Criar'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
