import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final String name;
  final String text;
  final IconData icon;

  const NotificationTile({
    super.key,
    required this.name,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 1),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xFF1877F2),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' $text',
                  ),
                ],
              ),
            ),
          ),
          Icon(
            icon,
            color: const Color(0xFF1877F2),
          ),
        ],
      ),
    );
  }
}
