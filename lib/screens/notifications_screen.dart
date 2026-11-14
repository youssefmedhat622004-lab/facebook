import 'package:flutter/material.dart';
import '../widgets/notification_tile.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: const [
          NotificationTile(
            name: 'Ahmed Mohamed',
            text: 'liked your post.',
            icon: Icons.thumb_up,
          ),
          NotificationTile(
            name: 'Mariam Ali',
            text: 'commented on your photo.',
            icon: Icons.comment,
          ),
          NotificationTile(
            name: 'Omar Hassan',
            text: 'sent you a friend request.',
            icon: Icons.person_add,
          ),
          NotificationTile(
            name: 'Sara Ahmed',
            text: 'shared a post.',
            icon: Icons.share,
          ),
        ],
      ),
    );
  }
}
