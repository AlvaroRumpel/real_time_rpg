import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../models/rpg_table_model.dart';
import '../../router/app_router.dart';
import '../../utils/assets.dart';
import '../../utils/extensions.dart';

class SelectCharPage extends StatelessWidget {
  final String id;
  final RpgTableModel? table;
  const SelectCharPage({
    super.key,
    required this.id,
    required this.table,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          spacing: 16,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => context.pop(),
              child: Text('Eu sou o mestre'),
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Ink(
                        width: context.width,
                        decoration: BoxDecoration(
                          color: context.color.primaryContainer,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 8,
                          children: [
                            Column(
                              spacing: 16,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  spacing: 4,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Claudinho Matador',
                                      style: context.textTheme.titleMedium,
                                    ),
                                    Opacity(
                                      opacity: .5,
                                      child: Text(
                                        'Josiclaison Matadore',
                                        style: context.textTheme.labelLarge,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Caçador de casadas',
                                  style: context.textTheme.labelLarge,
                                ),
                              ],
                            ),
                            VerticalDivider(),
                            Image.asset(
                              Assets.dice,
                              scale: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (_, __) => SizedBox(height: 16),
              itemCount: 3,
            ),
            InkWell(
              onTap: () => context.goNamed(
                RouteNames.createChar.name,
                pathParameters: {'id': table?.id ?? id},
                extra: table,
              ),
              child: Ink(
                decoration: BoxDecoration(
                  color: context.color.primaryContainer,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Adicionar novo personagem',
                      style: context.textTheme.labelLarge,
                    ),
                    Icon(Icons.add),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
