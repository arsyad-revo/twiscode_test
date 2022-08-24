import 'package:money2/money2.dart';

String getTimeString(int value) {
  final int hour = value ~/ 60;
  final int minutes = value % 60;
  return '${hour.toString().padLeft(2, "")}h ${minutes.toString().padLeft(2, "0")}m ';
}

bool isValidEmail(String? email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+")
      .hasMatch(email!);
}

String numToCurrency(num? price) {
  final idr = Currency.create('IDR', 3,
      invertSeparators: true, symbol: 'Rp', pattern: 'S #.###');
  final idrMoney = Money.fromNumWithCurrency(price!, idr);
  return idrMoney.toString();
}
