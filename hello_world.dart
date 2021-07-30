import 'dart:io';

void main() {
  stdout.write("Input bilangan yang akan dibagi : ");
  int bilangan = int.parse(stdin.readLineSync()!);
  if (bilangan % 3 == 0) {
    print("Hello");
  } else if (bilangan % 5 == 0) {
    print("World");
  } else if (bilangan % 3 != 0 || bilangan % 5 != 0) {
    print("Hello World");
  }
}
// void main() {
//   stdout.write("Masukkan Nilai :  ");
//   int nilai = int.parse(stdin.readLineSync()!);
//   if (nilai % 3 == 0) {
//     print("Hellow");
//   } else if (nilai % 5 == 0) {
//     print("World!");
//   } else if (nilai % 3 != 0 || nilai % 5 != 0) {
//     print("Hellow World!");
//   }
// }
