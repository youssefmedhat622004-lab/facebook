import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String? image;
  final String name;
  final bool isCreate;

  const StoryCard({
    super.key,
    this.image,
    required this.name,
    this.isCreate = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: image != null
            ? DecorationImage(
          image: AssetImage(image!),
          fit: BoxFit.cover,
        )
            : null,
        color: Colors.grey.shade300,
      ),
      child: Stack(
        children: [
          if (isCreate)
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 115,
                decoration: const BoxDecoration(
                  color: Color(0xFFE4E6EB),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.person,
                    size: 55,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

          if (isCreate)
            Positioned(
              top: 95,
              left: 35,
              child: Container(
                width: 34,
                height: 34,
                decoration: const BoxDecoration(
                  color: Color(0xFF1877F2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            )
          else
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Color(0xFF1877F2),
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Color(0xFF1877F2),
                  ),
                ),
              ),
            ),

          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 5,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
