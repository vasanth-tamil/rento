class Test {
  String? id;
  String? name;

  Test({this.id, required this.name});

  Test.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }
}
