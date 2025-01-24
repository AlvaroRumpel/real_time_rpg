import 'package:flutter/material.dart';

import '../utils/extensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.isExpanded = true,
    this.icon,
    this.iconAlignment = IconAlignment.start,
    this.onPressed,
  });
  final String label;
  final bool isExpanded;
  final VoidCallback? onPressed;
  final IconData? icon;
  final IconAlignment iconAlignment;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isExpanded ? context.width : null,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: icon != null ? Icon(icon) : null,
        iconAlignment: iconAlignment,
        label: Text(label),
      ),
    );
  }
}
