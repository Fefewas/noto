import 'package:drift/drift.dart';

import '../../../core/database/database.dart';
import '../models/list_model.dart';

class ListRepository {
  // Define your repository methods here
  ListRepository(this.database);
  final AppDatabase database;

  /// Stream: the UI will listen to this stream and update whenever the data changes
  Stream<List<UserList>> watchLists() {
    final query = database.select(database.lists).watch();
    return query.asyncMap((rows) async {
      final result = <UserList>[];
      for (final row in rows) {
        final items = await (database.select(
          database.listItems,
        )..where((i) => i.listId.equals(row.id))).get();
        result.add(
          UserList(
            id: row.id,
            name: row.name,
            icon: row.icon,
            color: int.parse(row.color),
            createdAt: row.createdAt,
            totalItems: items.length,
            completedItems: items.where((i) => i.isCompleted).length,
          ),
        );
      }
      return result;
    });
  }

  Future<int> createList({
    required String name,
    required String icon,
    required int color,
  }) {
    return database
        .into(database.lists)
        .insert(ListsCompanion.insert(name: name, icon: icon, color: color));
  }

  Future<void> deleteList(int id) {
    (database.delete(database.lists).where((l) => l.id.equals(id))).go();
  }
}
