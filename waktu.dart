import 'dart:io';

void main() {
  var number = "12:00";
  String hour = number.substring(0, number.indexOf(":"));
  String min = number.substring(number.indexOf(":") + 1);
  int jamint = int.parse(hour);
  int hour_1 = int.parse(hour);
  if (jamint < 12 && jamint > 24) {
    jamint = jamint += 12;
  } else if (jamint == 12) {
    jamint = 0;
  }
  if (hour_1 < 12) {
    print("$jamint : $min PM");
  } else {
    print("$jamint : $min AM");
  }
}
