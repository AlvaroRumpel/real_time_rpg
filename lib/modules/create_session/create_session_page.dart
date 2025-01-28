import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../router/app_router.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import 'bloc/create_session_bloc.dart';

class CreateSessionPage extends StatefulWidget {
  const CreateSessionPage({super.key});

  @override
  State<CreateSessionPage> createState() => _CreateSessionPageState();
}

class _CreateSessionPageState extends State<CreateSessionPage> {
  late final _controller = context.read<CreateSessionBloc>();

  final TextEditingController _tableNameController = TextEditingController();
  final TextEditingController _lifePointsBaseController =
      TextEditingController();
  final TextEditingController _actionPointsBaseController =
      TextEditingController();
  final TextEditingController _energyPointsBaseController =
      TextEditingController();
  final TextEditingController _maxAttributesPointsController =
      TextEditingController();
  final TextEditingController _maxSkillPointsController =
      TextEditingController();
  final TextEditingController _minInventoryController = TextEditingController();

  @override
  void dispose() {
    _tableNameController.dispose();
    _lifePointsBaseController.dispose();
    _actionPointsBaseController.dispose();
    _energyPointsBaseController.dispose();
    _maxAttributesPointsController.dispose();
    _maxSkillPointsController.dispose();
    _minInventoryController.dispose();
    super.dispose();
  }

  Future<void> _createSession() async {
    final tableName = _tableNameController.text.trim();
    final lifePointsBase = _lifePointsBaseController.text.trim();
    final actionPointsBase = _actionPointsBaseController.text.trim();
    final energyPointsBase = _energyPointsBaseController.text.trim();
    final maxAttributesPoints = _maxAttributesPointsController.text.trim();
    final maxSkillPoints = _maxSkillPointsController.text.trim();
    final minInventory = _minInventoryController.text.trim();

    await _controller.createSession(
      tableName: tableName,
      lifePointsBase: lifePointsBase,
      actionPointsBase: actionPointsBase,
      energyPointsBase: energyPointsBase,
      maxAttributesPoints: maxAttributesPoints,
      maxSkillPoints: maxSkillPoints,
      minInventory: minInventory,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CreateSessionBloc, CreateSessionState>(
        listener: (context, state) {
          if (state is CreateSessionFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Preencha os campos corretamente'),
              ),
            );

            return;
          }

          if (state is CreateSessionSuccess) {
            context.goNamed(
              RouteNames.inSession.name,
              pathParameters: {'id': state.table.id},
              extra: state.table,
            );
            return;
          }
        },
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              spacing: 24,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width * .5,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    spacing: 16,
                    children: [
                      Text(
                        'Nome da mesa',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      CustomTextField(
                        controller: _tableNameController,
                        label: 'Nome',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    spacing: 32,
                    children: [
                      Text(
                        'Base',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Row(
                        spacing: 32,
                        children: [
                          Expanded(
                            child: CustomTextField(
                              controller: _lifePointsBaseController,
                              label: 'Pontos de vida base',
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          Expanded(
                            child: CustomTextField(
                              controller: _actionPointsBaseController,
                              label: 'Pontos de ação base',
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          Expanded(
                            child: CustomTextField(
                              controller: _energyPointsBaseController,
                              label: 'Pontos de energia base',
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 32,
                        children: [
                          Expanded(
                            child: CustomTextField(
                              controller: _maxAttributesPointsController,
                              label: 'Máximo de pontos de atributo',
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          Expanded(
                            child: CustomTextField(
                              controller: _maxSkillPointsController,
                              label: 'Máximo de pontos de proficiência ',
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          Expanded(
                            child: CustomTextField(
                              controller: _minInventoryController,
                              label: 'Mínimo de inventário',
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ],
                      ),
                      BlocSelector<CreateSessionBloc, CreateSessionState, bool>(
                        selector: (state) {
                          return state is CreateSessionLoading;
                        },
                        builder: (context, isLoading) {
                          return CustomButton(
                            onPressed: isLoading ? null : _createSession,
                            isExpanded: false,
                            label: 'Criar mesa',
                            iconAlignment: IconAlignment.end,
                            icon: Icons.navigate_next,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
