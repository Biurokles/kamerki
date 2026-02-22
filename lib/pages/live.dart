import 'package:flutter/material.dart';

class LivePage extends StatelessWidget {
  const LivePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final oddItemColor = colorScheme.primary.withValues(alpha: 0.05);
    final evenItemColor = colorScheme.primary.withValues(alpha: 0.15);

    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return ListTile(
          tileColor: index.isOdd ? oddItemColor : evenItemColor,
          title: Text('Camera $index'),
        );
      },
    );
  }
}