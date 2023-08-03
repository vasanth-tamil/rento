class Transaction {
  String? id;
  String? transactionCode;
  double rentalAmount = 0.0;
  double pendingAmount = 0.0;
  double collectedAmount = 0.0;
  String? refId;
  int? roomId;
  int? userId;
  bool status = false;
  DateTime? rentalDate;

  Transaction({
    this.id,
    required this.transactionCode,
    required this.rentalAmount,
    required this.pendingAmount,
    required this.collectedAmount,
    required this.refId,
    required this.roomId,
    required this.userId,
    required this.status,
    required this.rentalDate,
  });

  Transaction.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    transactionCode = map['transaction_code'];
    rentalAmount = map['rental_amount'];
    pendingAmount = map['pending_amount'];
    collectedAmount = map['collected_amount'];
    refId = map['ref_id'];
    roomId = map['room_id'];
    userId = map['user_id'];
    status = map['status'];
    rentalDate = map['rental_date'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['id'] = id;
    map['transaction_code'] = transactionCode;
    map['rental_amount'] = rentalAmount;
    map['pending_amount'] = pendingAmount;
    map['collected_amount'] = collectedAmount;
    map['ref_id'] = refId;
    map['room_id'] = roomId;
    map['user_id'] = userId;
    map['status'] = status;
    map['rental_date'] = rentalDate;
    return map;
  }
}
