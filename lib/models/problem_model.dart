class Problem {
  String? id;
  String? title;
  String? description;
  int? priority;
  double amount = 0.0;
  bool status = false;
  DateTime? createdDate;
  DateTime? completedDate;

  Problem({
    this.id,
    required this.title,
    required this.description,
    required this.priority,
    required this.amount,
    required this.status,
    required this.createdDate,
    required this.completedDate,
  });

  Problem.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    title = map['name'];
    description = map['description'];
    priority = map['priority'];
    amount = map['amount'];
    status = map['status'];
    createdDate = map['created_date'];
    completedDate = map['completed_date'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['description'] = description;
    map['priority'] = priority;
    map['amount'] = amount;
    map['status'] = status;
    map['created_date'] = createdDate;
    map['completed_date'] = completedDate;
    return map;
  }
}
