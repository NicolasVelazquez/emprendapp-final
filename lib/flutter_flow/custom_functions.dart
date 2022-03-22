import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double calculateExpensesByMonth(
  List<ExpensesRecord> expenses,
  String period,
) {
  int year = DateTime.now().year;
  int month = DateTime.now().month;
  int day = DateTime.now().day;
  double amount = 0.00;
  if (expenses.isNotEmpty) {
    switch (period) {
      case "Mes":
        {
          for (var i in expenses) {
            if (i.date.year == year && i.date.month == month) {
              amount += i.amount;
            }
          }
        }
        break;

      case "Año":
        {
          for (var i in expenses) {
            if (i.date.year == year) {
              amount += i.amount;
            }
          }
        }
        break;

      case "Día":
        {
          for (var i in expenses) {
            if (i.date.year == year &&
                i.date.month == month &&
                i.date.day == day) {
              amount += i.amount;
            }
          }
        }
        break;

      default:
        {
          amount = 0.00;
        }
        break;
    }
  }
  return double.parse((amount).toStringAsFixed(2));
}
