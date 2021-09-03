// @dart=2.9
import 'dart:io';

class customer {
  String Nama;
  int Pin;
  int Saldo;
  int Norek;

  customer(this.Nama, this.Pin, this.Saldo, this.Norek);

  String getNama() {
    return Nama;
  }

  int getPin() {
    return Pin;
  }

  int getSaldo() {
    return Saldo;
  }

  int getNorek() {
    return Norek;
  }

  setSaldo(int Saldo) {
    this.Saldo = Saldo;
  }
}

List<customer> cust = [
  customer('irvan', 2020, 3000000000, 2345678),
  customer('adit', 2021, 20000000, 9876543)
];

customer custom;

bool validasi() {
  bool masuk = false;
  print('\n');
  print('masuk');
  stdout.write('PIN : ');
  var Pin = int.parse(stdin.readLineSync());
  for (customer c in cust) {
    if (Pin == c.getPin()) {
      custom = c;
      masuk = true;
    }
  }
  return masuk;
}

void login() {
  if (validasi()) {
    mainmenu();
  } else {
    main();
  }
}

void mainmenu() {
  var nama = custom.getNama();
  print('Welcome $nama!');
  print('1. Tarik Tunai ');
  print('2. Setor Tunai ');
  print('3. Transfer  ');
  print('4. Keluar ');
  stdout.write('menu : ');
  Menu();
}

void Menu() {
  var menu = stdin.readLineSync();
  switch (menu) {
    case '1':
      TarikTunai();
      break;
    case '2':
      SetorTunai();
      break;
    case '3':
      Transfer();
      break;
    case '4':
      exit(0);
      break;
    default:
      Menu();
  }
}

void TarikTunai() {
  print('-------Tarik Tunai--------');
  stdout.write('Jumlah Nominal : ');
  var nom = int.parse(stdin.readLineSync());
  if (custom.getSaldo() > nom) {
    SaldoTerbaru(-nom);
    print(custom.getSaldo());
  } else {
    print('saldo anda kurang');
  }
  mainmenu();
}

void SetorTunai() {
  print('--------Setor Tunai--------');
  stdout.write('Jumlah Nominal : ');
  var nom = int.parse(stdin.readLineSync());
  SaldoTerbaru(nom);
  print(custom.getSaldo());
  mainmenu();
}

void SaldoTerbaru(int nom) {
  var Saldo = custom.getSaldo() + nom;
  custom.setSaldo(Saldo);
}

void Transfer() {
  print('-----Transfer Uang-----');
  stdout.write('Jumlah Nominal Transfer : ');
  var nom = int.parse(stdin.readLineSync());
  if (custom.getSaldo() > nom) {
    var Saldo = custom.getSaldo() - nom;
  } else {
    print('saldo anda kurang');
  }
  print("---------------------------------------");
  stdout.write('Masukan No rekening : ');
  var rekening = int.parse(stdin.readLineSync());
  if (custom.getNorek() == rekening) {
    rekening = custom.getSaldo() + nom;
    print(
        'anda berhasil melakukan transfer sebesar $nom pada nomor rekening $rekening');
  } else {
    print('rekening not found');
  }

  mainmenu();
}

void main() {
  login();
}
