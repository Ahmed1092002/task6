import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class DateNow extends StatelessWidget {
  String now = DateFormat("yyyy-MM-dd hh:mm:ss").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}