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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[900],
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[700],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Result',
                    style: TextStyle(fontSize: 28, color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[700],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[500],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Numbers',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[600],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Operations',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
