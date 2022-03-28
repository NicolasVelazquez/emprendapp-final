import '../backend/backend.dart';

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
