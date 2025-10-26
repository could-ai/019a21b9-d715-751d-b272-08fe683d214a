import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.primaries[index % Colors.primaries.length],
              child: Text('${index + 1}'),
            ),
            title: Text('Friend ${index + 1}'),
            subtitle: const Text('Last message...'),
            onTap: () {
              // Navigate to chat detail
            },
          );
        },
      ),
    );
  }
}