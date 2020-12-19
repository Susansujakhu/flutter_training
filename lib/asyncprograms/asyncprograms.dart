void main() async {
  print("before waiting");

  await Future.delayed(Duration(seconds: 5)).then((value) {
    print("After 5 seconds");
  });

  print("last line of main");
}
