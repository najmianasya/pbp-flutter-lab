class Budget {
  static List<Budget> budgetList = [];
  String title;
  int nominal;
  String type;

  Budget({
    required this.title,
    required this.nominal,
    required this.type,
  });

  static void addBudget({
    required title,
    required nominal,
    required type,
  }) {
    budgetList.add(Budget(
      title: title,
      nominal: nominal,
      type: type,
    ));
  }
}