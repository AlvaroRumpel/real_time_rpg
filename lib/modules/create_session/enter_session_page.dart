import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../router/app_router.dart';
import '../../utils/assets.dart';
import '../../utils/extensions.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import 'bloc/enter_session_bloc.dart';

class EnterSessionPage extends StatefulWidget {
  const EnterSessionPage({super.key});

  @override
  State<EnterSessionPage> createState() => _EnterSessionPageState();
}

class _EnterSessionPageState extends State<EnterSessionPage> {
  final _codeController = TextEditingController();
  late final _controller = context.read<EnterSessionBloc>();

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EnterSessionBloc, EnterSessionState>(
      listener: (context, state) {
        if (state is EnterSessionSuccess) {
          context.goNamed(
            RouteNames.selectChar.name,
            pathParameters: {'id': state.table.id},
            extra: state.table,
          );
          return;
        }

        if (state is EnterSessionFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error)),
          );
          return;
        }
      },
      child: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.all(24),
            width:
                context.width > 450 ? context.width * .5 : context.width * .9,
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
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        maxLength: 6,
                      ),
                      CustomButton(
                          onPressed: () =>
                              _controller.enterSession(_codeController.text),
                          label: 'Entrar'),
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
      ),
    );
  }
}
