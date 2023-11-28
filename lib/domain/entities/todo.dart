class Todo {
  final String id;
  final String description;
  final DateTime? completedAt;

  Todo(
      {required this.id, required this.description, required this.completedAt});

  Todo copyWith({String? id, String? description, DateTime? completedAt}) =>
      Todo(
          id: id ?? this.id,
          description: description ?? this.description,
          completedAt: completedAt);

  bool get done {
    return completedAt != null;
  }

  //если эта переменная не Null то значит уже сделано. done  true.  если  Null то мы еще не имеем даты окончания
}
