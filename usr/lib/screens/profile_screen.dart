import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Text('U', style: TextStyle(fontSize: 40, color: Colors.white)),
            ),
            SizedBox(height: 20),
            Text('Username', style: TextStyle(fontSize: 24, color: Colors.white)),
            SizedBox(height: 10),
            Text('Snap Score: 1000', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}