import 'package:flutter/material.dart';

TextStyle text01() {
  return const TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
}

TextStyle text02(bool isFull) {
  return TextStyle(
    fontSize: 100,
    color: isFull ? Colors.red : Colors.white,
  );
}

ButtonStyle buttonStyleExit({bool? isEmpty}) {
  return ElevatedButton.styleFrom(
    backgroundColor: isEmpty! ? Colors.white.withOpacity(0.2) : Colors.white,
    fixedSize: const Size(100, 100),
    foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );
}

ButtonStyle buttonStyleEnter({bool? isFull}) {
  return ElevatedButton.styleFrom(
    backgroundColor: isFull! ? Colors.white.withOpacity(0.2) : Colors.white,
    fixedSize: const Size(100, 100),
    foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );
}

TextStyle textButtonStyle() {
  return const TextStyle(
    color: Colors.black,
    fontSize: 16,
  );
}
