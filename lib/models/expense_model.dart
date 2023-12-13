class ExpenseModel {
  String date;
  String amt;
  List<ExpenseDetails> transaction;

  ExpenseModel({
    required this.date,
    required this.amt,
    required this.transaction,
  });

  // Convert ExpenseModel to Map
  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'amt': amt,
      'transaction': transaction.map((expenseDetails) => expenseDetails.toMap()).toList(),
    };
  }

  // Reconstruct ExpenseModel from Map
  factory ExpenseModel.fromMap(Map<String, dynamic> map) {
    return ExpenseModel(
      date: map['date'],
      amt: map['amt'],
      transaction: List<ExpenseDetails>.from(map['transaction'].map((x) => ExpenseDetails.fromMap(x))),
    );
  }
}

class ExpenseDetails {
  String title;
  String desc;
  String amt;
  String balance;
  String catImg;

  ExpenseDetails({
    required this.title,
    required this.desc,
    required this.amt,
    required this.balance,
    required this.catImg,
  });

  // Convert ExpenseDetails to Map
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'desc': desc,
      'amt': amt,
      'balance': balance,
      'catImg': catImg,
    };
  }

  // Reconstruct ExpenseDetails from Map
  factory ExpenseDetails.fromMap(Map<String, dynamic> map) {
    return ExpenseDetails(
      title: map['title'],
      desc: map['desc'],
      amt: map['amt'],
      balance: map['balance'],
      catImg: map['catImg'],
    );
  }
}
