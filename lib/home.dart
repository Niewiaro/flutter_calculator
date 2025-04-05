import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text('NuMbErS', style: TextStyle(fontWeight: FontWeight.bold)),
            Expanded(child: SizedBox()),
            Text('H'),
          ],
        ),
        centerTitle: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blueGrey[500],
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              child: const Text("Result"),
            ),
            Container(
              color: Colors.grey[900],
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    color: Colors.blueGrey[700],
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    child: const Text("Numbers"),
                  ),
                  Container(
                    color: Colors.blueGrey[900],
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    child: const Text("Operations"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
