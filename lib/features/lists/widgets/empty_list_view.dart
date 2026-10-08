import 'package:flutter/material.dart';

class EmptyListsView extends StatelessWidget {
  const EmptyListsView({super.key, this.onCreatePressed});

  final VoidCallback? onCreatePressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: colors.primaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.checklist_rounded,
                size: 56,
                color: colors.onPrimaryContainer,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Aún no tienes listas',
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Crea tu primera lista para empezar a organizar tus tareas.',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colors.onSurfaceVariant,
              ),
            ),
            if (onCreatePressed != null) ...[
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: onCreatePressed,
                icon: const Icon(Icons.add),
                label: const Text('Crear lista'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
