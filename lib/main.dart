import 'package:flutter/material.dart';

import 'package:noto/features/lists/widgets/list_card.dart';
import 'package:noto/features/lists/widgets/empty_list_view.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: const Text('Mis listas')),
        body: EmptyListsView(onCreatePressed: () {}),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    ),
  );
}
