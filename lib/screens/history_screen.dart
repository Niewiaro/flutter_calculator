import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_calculator/models/history_entry.dart';

class HistoryScreen extends StatelessWidget {
  final List<HistoryEntry> history;

  const HistoryScreen({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("History")),
      body: history.isEmpty
          ? const Center(child: Text("No history"))
          : ListView.builder(
              itemCount: history.length,
              itemBuilder: (context, index) {
                final entry = history[index];
                final formattedDate = DateFormat('yyyy-MM-dd HH:mm').format(entry.dateTime);
                return ListTile(
                  title: Text(entry.expression),
                  subtitle: Text('= ${entry.result}'),
                  trailing: Text(formattedDate),
                );
              },
            ),
    );
  }
}
