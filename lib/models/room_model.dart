class Room {
  int? id;
  String? roomNo;
  String? description;
  double eUnit = 0.0;
  double pendingAmount = 0.0;
  double rentalAmount = 0.0;
  bool status = false;
  DateTime? createdAt;
  DateTime? updatedAt;

  Room({
    this.id,
    required this.roomNo,
    required this.description,
    required this.eUnit,
    required this.pendingAmount,
    required this.rentalAmount,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  Room.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    roomNo = map['room_no'];
    description = map['description'];
    eUnit = map['eunit'];
    pendingAmount = map['pending_amount'];
    rentalAmount = map['rental_amount'];
    status = map['status'];
    createdAt = map['created_at'];
    updatedAt = map['updated_at'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['id'] = id;
    map['room_no'] = roomNo;
    map['description'] = description;
    map['e_unit'] = eUnit;
    map['pending_amount'] = pendingAmount;
    map['rental_amount'] = rentalAmount;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}
