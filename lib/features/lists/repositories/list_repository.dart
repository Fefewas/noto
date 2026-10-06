import '../../../core/database/database.dart';

class ListRepository {
  // Define your repository methods here
  final AppDatabase database;

  ListRepository(this.database);

  Future<List<DbList>> getLists() {
    return database.select(database.lists).get();
  }

  Future<int> createList(ListsCompanion list) {
    return database.into(database.lists).insert(list);
  }
}
