import 'package:app_contador_pessoas/src/pages/home/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {}

  void increment() {}

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
              'Pode Entrar!!',
              style: text01(),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                '0',
                style: text02(),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: buttonStyle(),
                  onPressed: decrement,
                  child: Text(
                    'Saiu',
                    style: textButtonStyle(),
                  ),
                ),
                const SizedBox(
                  width: 32,
                ),
                ElevatedButton(
                  style: buttonStyle(),
                  onPressed: increment,
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
