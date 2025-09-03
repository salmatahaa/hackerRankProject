import 'package:flutter/material.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Room Name',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'Challenge',
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              //
            },
          ),
        ],
      ),
      body: const Column(
        children: [
          Expanded(
            child: Center(
              child: Text('', style: TextStyle(color: Colors.grey)),
            ),
          ),
          _MessageInput(),
        ],
      ),
    );
  }
}

class _MessageInput extends StatelessWidget {
  const _MessageInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: const Row(
          children: [
            Icon(Icons.sentiment_satisfied_alt, color: Colors.grey),
            SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'hello...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
