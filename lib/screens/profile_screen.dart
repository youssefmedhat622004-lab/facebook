import 'package:flutter/material.dart';
import '../constants/app_images.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(AppImages.profileCover),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -55),
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundColor: Color(0xFF1877F2),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 65,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -35),
                    child: const Column(
                      children: [
                        Text(
                          'Your Name',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      15,
                      0,
                      15,
                      15,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.edit),
                            label: const Text('Edit Profile'),
                          ),
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {},
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey.shade200,
                          ),
                          icon: const Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(15),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.school_outlined),
                      SizedBox(width: 10),
                      Text('Studied Computer Science'),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 10),
                      Text('Lives in Cairo'),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(Icons.work_outline),
                      SizedBox(width: 10),
                      Text('Flutter Developer'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
