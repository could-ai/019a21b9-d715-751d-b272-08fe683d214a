import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stories'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: MasonryGridView.count(
        crossAxisCount: 2,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8.0),
            height: 200 + (index % 3) * 50.0,
            decoration: BoxDecoration(
              color: Colors.primaries[index % Colors.primaries.length],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Center(
              child: Text(
                'Story',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
    );
  }
}