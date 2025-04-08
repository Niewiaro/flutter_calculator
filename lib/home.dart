import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants.dart';
import 'package:flutter_calculator/widgets/outlined_button_group.dart';
import 'package:flutter_calculator/widgets/text_button_group.dart';
import 'package:flutter_calculator/widgets/elevated_button_group.dart';


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
        padding: const EdgeInsets.all(PADDING),
        child: Material(
          elevation: 10,
          borderRadius: BORDER_RADIUS,
          color: Colors.grey[900],
          child: Padding(
            padding: const EdgeInsets.all(PADDING),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.all(PADDING),
                  margin: const EdgeInsets.only(bottom: PADDING),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[700],
                    borderRadius: BORDER_RADIUS,
                  ),
                  child: const Text(
                    'Result',
                    style: TextStyle(fontSize: 28, color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(PADDING),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[700],
                      borderRadius: BORDER_RADIUS,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.all(PADDING),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[500],
                              borderRadius: BORDER_RADIUS,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: TextButtonGroup(
                                    onPressed: (value) {
                                      print("Pressed $value");
                                    },
                                  ),
                                ),
                                const SizedBox(height: PADDING),
                                Expanded(
                                  child: ElevatedButtonGroup(
                                    onPressed: (value) {
                                      print("Pressed $value");
                                    },
                                  ),
                                ),
                                const SizedBox(height: PADDING),
                                Expanded(
                                  child: OutlinedButtonGroup(
                                    onPressed: (value) {
                                      print("Pressed $value");
                                    },
                                  ),
                                ),
                                const SizedBox(height: PADDING),
                                Expanded(
                                  child: TextButtonGroup(
                                    onPressed: (value) {
                                      print("Pressed $value");
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: PADDING),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(PADDING),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[600],
                              borderRadius: BORDER_RADIUS,
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
