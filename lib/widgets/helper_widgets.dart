import 'package:flutter/material.dart';

Widget buildCircleButton({
  required IconData icon,
  required VoidCallback onTap,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5),
    child: IconButton(
      onPressed: onTap,
      style: IconButton.styleFrom(
        backgroundColor: Colors.grey.shade200,
      ),
      icon: Icon(icon),
    ),
  );
}

Widget buildPostAction(
    IconData icon,
    String text,
    Color color,
    ) {
  return Expanded(
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildCreateAction(
    IconData icon,
    String text,
    Color color,
    ) {
  return Column(
    children: [
      Icon(
        icon,
        color: color,
        size: 28,
      ),
      const SizedBox(height: 5),
      Text(text),
    ],
  );
}
