void main() {
  String s = 'helloworld';
  String c = 'l';
  int runs = 0;
  List<int> resuls = List<int>(s.length);
  int r = 0;
  resuls.fillRange(0, s.length, 100);
  for (int i = 0; i < s.length; i++) {
    if (s[i] == c) {
      for (int j = 0; j < s.length; j++) {
        runs++;
        r = i - j;
        r = r.abs();
        if (r < resuls[j]) {
          resuls[j] = r;
        }
      }
    }
  }
  print(resuls);
  print(runs);
}
