class ListItem {
  String id = '';
  String name = '';
  int quantity = 0;
  String? note = '';
  bool isCompleted = false;
}

final item = ListItem()
  ..id = '1'
  ..name = 'Milk'
  ..quantity = 2
  ..note = 'Buy low-fat milk'
  ..isCompleted = false;
