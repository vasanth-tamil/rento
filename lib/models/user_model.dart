class User {
  String? id;
  String? name;
  String? idProof;
  String? contactNumber;
  String? address;
  int? roomId;
  bool status = false;
  DateTime? createdAt;
  DateTime? updatedAt;

  User({
    this.id,
    required this.name,
    required this.idProof,
    required this.contactNumber,
    required this.address,
    required this.roomId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  User.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    idProof = map['id_proof'];
    contactNumber = map['contact_number'];
    address = map['address'];
    roomId = map['room_id'];
    status = map['status'];
    createdAt = map['created_at'];
    updatedAt = map['updated_at'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['id_proof'] = idProof;
    map['contact_number'] = contactNumber;
    map['address'] = address;
    map['room_id'] = roomId;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}
