import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants.dart';
import 'package:flutter_calculator/widgets/full_expand_wrapper.dart';
import 'package:flutter_calculator/widgets/styled_elevated_button.dart';
import 'package:flutter_calculator/widgets/styled_outlined_button.dart';
import 'package:flutter_calculator/widgets/styled_text_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String input = '';
  double? previousValue;
  String? operator;
  bool shouldClearInput = false;

  void appendInput(String value) {
    setState(() {
      if (shouldClearInput) {
        input = value;
        shouldClearInput = false;
      } else {
        input += value;
      }
    });
  }

  void selectOperator(String selectedOperator) {
    setState(() {
      double current = double.tryParse(input) ?? 0;

      if (previousValue != null && operator != null) {
        switch (operator) {
          case '+':
            previousValue = previousValue! + current;
            break;
          case '-':
            previousValue = previousValue! - current;
            break;
          case '*':
            previousValue = previousValue! * current;
            break;
        }
      } else {
        previousValue = current;
      }

      input = previousValue!.toStringAsFixed(0);
      operator = selectedOperator;
      shouldClearInput = true;
    });
  }

  void calculateResult() {
    if (input.isEmpty || previousValue == null || operator == null) return;

    double current = double.tryParse(input) ?? 0;
    double result;

    switch (operator) {
      case '+':
        result = previousValue! + current;
        break;
      case '-':
        result = previousValue! - current;
        break;
      case '*':
        result = previousValue! * current;
        break;
      default:
        return;
    }

    setState(() {
      input = result.toStringAsFixed(0);
      previousValue = null;
      operator = null;
      shouldClearInput = true;
    });
  }

  void clearAll() {
    setState(() {
      input = '';
      previousValue = null;
      operator = null;
      shouldClearInput = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('NuMbErS', style: TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            StyledOutlinedButton(onPressed: clearAll, child: const Text('C')),
            const SizedBox(width: 10),
            StyledOutlinedButton(
              onPressed: () {
                print("Pressed H");
              },
              child: const Text('H'),
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
                  child: Text(
                    input.isEmpty ? '0' : input,
                    style: const TextStyle(
                      fontSize: BUTTON_FONT_SIZE,
                      color: Colors.white,
                    ),
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
                                // first element: 1, 2, 3 (StyledTextButton)
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
                                              appendInput("1");
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
                                              appendInput("2");
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
                                              appendInput("3");
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                const SizedBox(height: PADDING),

                                // second element: 4, 5, 6 (StyledElevatedButton)
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(PADDING),
                                    decoration: BoxDecoration(
                                      color: Colors.teal[100],
                                      borderRadius: BORDER_RADIUS,
                                    ),
                                    child: Row(
                                      children: [
                                        FullExpandWrapper(
                                          child: StyledElevatedButton(
                                            child: const Text(
                                              "4",
                                              style: TextStyle(
                                                fontSize: BUTTON_FONT_SIZE,
                                              ),
                                            ),
                                            onPressed: () {
                                              appendInput("4");
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: PADDING),
                                        FullExpandWrapper(
                                          child: StyledElevatedButton(
                                            child: const Text(
                                              "5",
                                              style: TextStyle(
                                                fontSize: BUTTON_FONT_SIZE,
                                              ),
                                            ),
                                            onPressed: () {
                                              appendInput("5");
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: PADDING),
                                        FullExpandWrapper(
                                          child: StyledElevatedButton(
                                            child: const Text(
                                              "6",
                                              style: TextStyle(
                                                fontSize: BUTTON_FONT_SIZE,
                                              ),
                                            ),
                                            onPressed: () {
                                              appendInput("6");
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                const SizedBox(height: PADDING),

                                // third element: 7, 8, 9 (StyledOutlinedButton)
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(PADDING),
                                    decoration: BoxDecoration(
                                      color: Colors.indigoAccent[100],
                                      borderRadius: BORDER_RADIUS,
                                    ),
                                    child: Row(
                                      children: [
                                        FullExpandWrapper(
                                          child: StyledOutlinedButton(
                                            child: const Text(
                                              "7",
                                              style: TextStyle(
                                                fontSize: BUTTON_FONT_SIZE,
                                              ),
                                            ),
                                            onPressed: () {
                                              appendInput("7");
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: PADDING),
                                        FullExpandWrapper(
                                          child: StyledOutlinedButton(
                                            child: const Text(
                                              "8",
                                              style: TextStyle(
                                                fontSize: BUTTON_FONT_SIZE,
                                              ),
                                            ),
                                            onPressed: () {
                                              appendInput("8");
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: PADDING),
                                        FullExpandWrapper(
                                          child: StyledOutlinedButton(
                                            child: const Text(
                                              "9",
                                              style: TextStyle(
                                                fontSize: BUTTON_FONT_SIZE,
                                              ),
                                            ),
                                            onPressed: () {
                                              appendInput("9");
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                const SizedBox(height: PADDING),

                                // forth element: 0 (StyledElevatedButton)
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(PADDING),
                                    decoration: BoxDecoration(
                                      color: Colors.teal[100],
                                      borderRadius: BORDER_RADIUS,
                                    ),
                                    child: Row(
                                      children: [
                                        FullExpandWrapper(
                                          child: StyledElevatedButton(
                                            child: const Text(
                                              "0",
                                              style: TextStyle(
                                                fontSize: BUTTON_FONT_SIZE,
                                              ),
                                            ),
                                            onPressed: () {
                                              appendInput("0");
                                            },
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

                        const SizedBox(width: PADDING),

                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(PADDING),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[600],
                              borderRadius: BORDER_RADIUS,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      selectOperator("+");
                                    },
                                    icon: const FaIcon(FontAwesomeIcons.plus),
                                    color: Colors.white,
                                    iconSize: ICON_FONT_SIZE,
                                  ),
                                ),
                                const SizedBox(height: PADDING),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      selectOperator("-");
                                    },
                                    // icon: const FaIcon(FontAwesomeIcons.minus),
                                    icon: const Icon(Icons.remove),
                                    color: Colors.white,
                                    iconSize: ICON_FONT_SIZE,
                                  ),
                                ),
                                const SizedBox(height: PADDING),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      selectOperator("*");
                                    },
                                    // icon: const FaIcon(FontAwesomeIcons.xmark),
                                    icon: const Icon(Icons.clear),
                                    color: Colors.white,
                                    iconSize: ICON_FONT_SIZE,
                                  ),
                                ),
                                const SizedBox(height: PADDING),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      calculateResult();
                                    },
                                    icon: const FaIcon(FontAwesomeIcons.equals),
                                    color: Colors.white,
                                    iconSize: ICON_FONT_SIZE,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
