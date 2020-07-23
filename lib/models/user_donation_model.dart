import 'package:flutter/foundation.dart';

class UserDonation {
  final String id, caseId;
  final DateTime date;
  final double amount;

  const UserDonation(
      {@required this.id,
      @required this.caseId,
      @required this.date,
      @required this.amount});

}
