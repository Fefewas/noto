import 'package:drift/drift.dart';

class ListItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get listId => integer()();
  TextColumn get name => text()();
  IntColumn get quantity => integer()();
  TextColumn get note => text().nullable()();
  BoolColumn get isCompleted => boolean().withDefault(const Constant(false))();
}