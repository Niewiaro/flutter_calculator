import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_calculator/models/history_entry.dart';

class HistoryScreen extends StatelessWidget {
  final List<HistoryEntry> history;

  const HistoryScreen({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("History"),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: history.isEmpty
          ? const Center(
              child: Text(
                "No calculations yet",
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: history.length,
              itemBuilder: (context, index) {
                final entry = history[history.length - 1 - index]; // newest first
                final formattedDate =
                    DateFormat('yyyy-MM-dd HH:mm').format(entry.dateTime);

                return Card(
                  color: Colors.blueGrey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    title: Text(
                      entry.expression,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(
                      'Result: ${entry.result}',
                      style: const TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    trailing: Text(
                      formattedDate,
                      style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 12,
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
