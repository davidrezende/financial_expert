class Expense {
  final int? id;
  final String name;
  final double value;
  final String? type;
  final int? month;
  final int? year;
  Expense({
    this.id,
    required this.name,
    this.type,
    required this.value,
    this.month,
    this.year,
  });
}
