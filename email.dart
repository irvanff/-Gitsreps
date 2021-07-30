bool isEmail(String string) {
  if (string.isEmpty) {
    return false;
  }
  // const pattern = r'^([\w-\.]{0,20})+@\.([\w-]+\.)+[\w-]{1,2}$';
  const pattern = r'^([\w-\.]{0,20})+@\.([\w-]+\.)+[\w-]{1,2}$';
  final regExp = RegExp(pattern);

  if (!regExp.hasMatch(string)) {
    return false;
  }
  return true;
}

void main() {
  print(isEmail('kampusmerdeka123gmail.com')); // tidak menggunakan @
  print(isEmail('kampusmer23@gmail.co.id')); //setelah @ tidak menggunakan titik
  print(isEmail('12345678901@.gmail.co.id'));
  print(isEmail('kampusmerdeka123@.gmail.co.id'));
}
