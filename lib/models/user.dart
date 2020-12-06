import 'package:flutter/cupertino.dart';

class User {
  final String userName;
  final double id;
  User({@required this.userName, @required this.id});
  String get name => this.userName;
}
