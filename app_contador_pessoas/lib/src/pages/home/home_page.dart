import 'package:app_contador_pessoas/src/pages/home/styles/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      isFull ? null : count++;
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/padaria.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              isFull ? 'Lotado' : 'Pode Entrar!!',
              style: text01(),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                '$count',
                style: text02(isFull),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: buttonStyleExit(isEmpty: isEmpty),
                  onPressed: isEmpty ? null : decrement,
                  child: Text(
                    'Saiu',
                    style: textButtonStyle(),
                  ),
                ),
                const SizedBox(
                  width: 32,
                ),
                ElevatedButton(
                  style: buttonStyleEnter(isFull: isFull),
                  onPressed: isFull ? null : increment,
                  child: Text(
                    'Entrou',
                    style: textButtonStyle(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
