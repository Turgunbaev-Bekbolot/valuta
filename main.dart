import 'dart:io';

void main(List<String> args) {
  Valuta val = Valuta(
    dol: 0.011,
    dolSell: 90,
    euro: 0.009,
    euroSell: 95,
    rub: 0.9,
    rubSell: 1,
    ten: 0.18,
    tenSell: 5,
  );
  print('1) Хотите обменять другую валюту на сом?');
  print('2) Хотите обменять сом на другую валюту?');
  int answer = int.parse(stdin.readLineSync()!);
  val.valuta(answer);
}

class Valuta {
  double? dol;
  double? euro;
  double? rub;
  double? ten;
  double? dolSell;
  double? euroSell;
  double? rubSell;
  double? tenSell;
  Valuta(
      {this.dol,
      this.euro,
      this.rub,
      this.ten,
      this.dolSell,
      this.euroSell,
      this.rubSell,
      this.tenSell});
  valuta(int answer) {
    if (answer == 1) {
      print('Доллар: $dolSell ');
      print('Евро: $euroSell ');
      print('Рубль: $rubSell ');
      print('Тенге: $tenSell ');
      print(
          'Выборите вылюту на которую хотите обменять сом: \n1)dol\n2)euro\n3)rub\n4)ten');
      int variant = int.parse(stdin.readLineSync()!);
      if (variant == 1) {
        print('Сколько сом вы хотите обменять?\n');
        int sum = int.parse(stdin.readLineSync()!);
        print(sum * dolSell!);
      } else if (variant == 2) {
        print('Сколько сом вы хотите обменять?\n');

        int sum = int.parse(stdin.readLineSync()!);
        print(sum * euroSell!);
      } else if (variant == 3) {
        print('Сколько сом вы хотите обменять?\n');

        int sum = int.parse(stdin.readLineSync()!);
        print(sum * rubSell!);
      } else if (variant == 4) {
        print('Сколько сом вы хотите обменять?\n');

        int sum = int.parse(stdin.readLineSync()!);
        print(sum * tenSell!);
      }
    } else if (answer == 2) {
      print('Доллар: $dol ');
      print('Евро: $euro ');
      print('Рубль: $rub ');
      print('Тенге: $ten ');
      print(
          'Выборите вылюту на которую хотите купить за сом: \n1)dol\n2)euro\n3)rub\n4)ten');
      int variant = int.parse(stdin.readLineSync()!);
      if (variant == 1) {
        print('Сколько сом вы хотите обменять?\n');
        int sum = int.parse(stdin.readLineSync()!);
        print(sum / dol!);
      } else if (variant == 2) {
        print('Сколько сом вы хотите обменять?\n');

        int sum = int.parse(stdin.readLineSync()!);
        print(sum / euro!);
      } else if (variant == 3) {
        print('Сколько сом вы хотите обменять?\n');

        int sum = int.parse(stdin.readLineSync()!);
        print(sum / rub!);
      } else if (variant == 4) {
        print('Сколько сом вы хотите обменять?\n');

        int sum = int.parse(stdin.readLineSync()!);
        print(sum / ten!);
      }
    }
  }
}
