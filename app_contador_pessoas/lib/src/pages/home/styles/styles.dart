import 'package:flutter/material.dart';

TextStyle text01() {
  return const TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
}

TextStyle text02() {
  return const TextStyle(
    fontSize: 100,
    color: Colors.white,
  );
}

ButtonStyle buttonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
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
