class BoardItemObject {
  const BoardItemObject({required this.title});

  final String title;
}

class BoardListObject {
  const BoardListObject({required this.title, required this.items});
  final String title;
  final List<BoardItemObject> items;
}
