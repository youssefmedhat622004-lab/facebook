import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final friends = [
      'Ahmed Mohamed',
      'Mariam Ali',
      'Omar Hassan',
      'Sara Ahmed',
      'Youssef Khaled',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Friends',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 1),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: const CircleAvatar(
                radius: 28,
                backgroundColor: Color(0xFF1877F2),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              title: Text(
                friends[index],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text('12 mutual friends'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text('Add Friend'),
              ),
            ),
          );
        },
      ),
    );
  }
}
