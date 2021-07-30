void palindrome(String kata) {
  var benar = "True";
  int l = kata.length;
  for (int k = 0; k < l / 2; k++) {
    if (kata[k] != kata[l - k - 1]) {
      benar = "False";
      break;
    }
  }
  print(benar);
}

void main() {
  palindrome("KataK");
  palindrome("AbA");
  palindrome("umi");
}
