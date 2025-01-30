import 'package:flutter/material.dart';

import '../../utils/assets.dart';
import '../../utils/extensions.dart';
import '../../widgets/custom_text_field.dart';

class CreateCharPage extends StatelessWidget {
  const CreateCharPage({super.key});

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
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.color.primaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Foto do Personagem',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(height: 8),
                      Image.asset(
                        Assets.dice,
                        scale: 3,
                      ),
                    ],
                  ),
                  Column(
                    spacing: 16,
                    children: [
                      CustomTextField(
                        label: 'Jogador',
                        controller: TextEditingController(),
                      ),
                      CustomTextField(
                        label: 'Personagem',
                        controller: TextEditingController(),
                      ),
                      CustomTextField(
                        label: 'Título',
                        controller: TextEditingController(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.color.primaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BasePointsContainer(
                    color: const Color(0xffCF1F1F),
                    icon: Icons.favorite_outline_rounded,
                    text: '0',
                  ),
                  BasePointsContainer(
                    color: const Color(0xff1F5DCF),
                    icon: Icons.favorite_outline_rounded,
                    text: '0',
                  ),
                  BasePointsContainer(
                    color: context.color.primary,
                    icon: Icons.favorite_outline_rounded,
                    text: '0',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BasePointsContainer extends StatelessWidget {
  const BasePointsContainer({
    required this.color,
    required this.icon,
    required this.text,
  });
  final Color color;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: context.color.surfaceContainerHighest,
            border: Border.all(color: color),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Icon(icon, color: color.withValues(alpha: 0.1)),
              Text(
                style: TextStyle(color: color),
                text,
              ),
            ],
          ),
        ),
        Opacity(
          opacity: 0.50,
          child: Container(
            decoration: BoxDecoration(
              color: context.color.surfaceContainerHighest,
              border: Border.all(color: color),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(6),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Icon(icon, color: color.withValues(alpha: 0.1)),
                Text(
                  style: TextStyle(color: color),
                  text,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
