import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants.dart';
import 'package:flutter_calculator/widgets/full_expand_wrapper.dart';
import 'package:flutter_calculator/widgets/styled_outlined_button.dart';
import 'package:flutter_calculator/widgets/styled_text_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('NuMbErS', style: TextStyle(fontWeight: FontWeight.bold)),
            Expanded(child: SizedBox()),
            StyledOutlinedButton(
              child: const Text('H'),
              onPressed: () {
                print("Pressed H");
              },
            ),
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
                // first element in column: output (Result)
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

                // second element in column: input (Numbers, Operations)
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
                                // first element: 1, 2, 3
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(PADDING),
                                    decoration: BoxDecoration(
                                      color: Colors.amber[100],
                                      borderRadius: BORDER_RADIUS,
                                    ),
                                    child: Row(
                                      children: [
                                        FullExpandWrapper(
                                          child: StyledTextButton(
                                            child: const Text(
                                              "1",
                                              style: const TextStyle(
                                                fontSize: BUTTON_FONT_SIZE,
                                              ),
                                            ),
                                            onPressed: () {
                                              print("Pressed 1");
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: PADDING),
                                        FullExpandWrapper(
                                          child: StyledTextButton(
                                            child: const Text(
                                              "2",
                                              style: const TextStyle(
                                                fontSize: BUTTON_FONT_SIZE,
                                              ),
                                            ),
                                            onPressed: () {
                                              print("Pressed 2");
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: PADDING),
                                        FullExpandWrapper(
                                          child: StyledTextButton(
                                            child: const Text(
                                              "3",
                                              style: const TextStyle(
                                                fontSize: BUTTON_FONT_SIZE,
                                              ),
                                            ),
                                            onPressed: () {
                                              print("Pressed 3");
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                const SizedBox(height: PADDING),

                                const Expanded(
                                  child: Placeholder(color: Colors.white),
                                ),
                                const SizedBox(height: PADDING),
                                const Expanded(
                                  child: Placeholder(color: Colors.white),
                                ),
                                const SizedBox(height: PADDING),
                                const Expanded(
                                  child: Placeholder(color: Colors.white),
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
                            child: const Placeholder(
                              color: Colors.red,
                              strokeWidth: 2,
                              fallbackHeight: double.infinity,
                              fallbackWidth: double.infinity,
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
