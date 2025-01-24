import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../router/app_router.dart';
import '../../utils/assets.dart';
import '../../utils/extensions.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class EnterSessionPage extends StatefulWidget {
  const EnterSessionPage({super.key});

  @override
  State<EnterSessionPage> createState() => _EnterSessionPageState();
}

class _EnterSessionPageState extends State<EnterSessionPage> {
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
                    CustomTextField(
                      controller: _codeController,
                      label: 'Código',
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 5,
                    ),
                    CustomButton(onPressed: () {}, label: 'Entrar'),
                    CustomButton(
                      onPressed: () =>
                          context.goNamed(RouteNames.createSession.name),
                      label: 'Criar',
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
