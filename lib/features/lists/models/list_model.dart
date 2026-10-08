class UserList {
  final int id;
  final String name;
  final String icon;
  final int color;
  final DateTime createdAt;
  final int totalItems;
  final int completedItems;

  const UserList({
    required this.id,
    required this.name,
    required this.icon,
    required this.color,
    required this.createdAt,
    required this.totalItems,
    required this.completedItems,
  });

  double get progress => totalItems == 0 ? 0.0 : completedItems / totalItems;
}
