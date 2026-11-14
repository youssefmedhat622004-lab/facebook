import 'package:flutter/material.dart';
import '../constants/app_images.dart';
import '../widgets/story_card.dart';
import '../widgets/facebook_post.dart';
import '../widgets/helper_widgets.dart';
import 'create_post_screen.dart';

class HomeFeed extends StatelessWidget {
  const HomeFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: false,
          backgroundColor: Colors.white,
          elevation: 1,
          title: const Text(
            'facebook',
            style: TextStyle(
              color: Color(0xFF1877F2),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            buildCircleButton(
              icon: Icons.search,
              onTap: () {},
            ),
            buildCircleButton(
              icon: Icons.message,
              onTap: () {},
            ),
            const SizedBox(width: 8),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(height: 10),
              // Create post
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 23,
                      backgroundColor: Color(0xFF1877F2),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const CreatePostScreen(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.grey.shade300,
                            ),
                          ),
                          child: const Text(
                            "What's on your mind?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 8,
                thickness: 8,
                color: Color(0xFFF0F2F5),
              ),
              // Action buttons
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    buildPostAction(
                      Icons.video_call,
                      'Live',
                      Colors.red,
                    ),
                    buildPostAction(
                      Icons.photo_library,
                      'Photo',
                      Colors.green,
                    ),
                    buildPostAction(
                      Icons.video_camera_back,
                      'Reel',
                      Colors.purple,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 8,
                thickness: 8,
                color: Color(0xFFF0F2F5),
              ),
              // Stories
              SizedBox(
                height: 190,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(10),
                  children: const [
                    StoryCard(
                      isCreate: true,
                      name: 'Create Story',
                    ),
                    StoryCard(
                      image: AppImages.storyAhmed,
                      name: 'Ahmed',
                    ),
                    StoryCard(
                      image: AppImages.storyMariam,
                      name: 'Mariam',
                    ),
                    StoryCard(
                      image: AppImages.storyOmar,
                      name: 'Omar',
                    ),
                    StoryCard(
                      image: AppImages.storySara,
                      name: 'Sara',
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 8,
                thickness: 8,
                color: Color(0xFFF0F2F5),
              ),
              const FacebookPost(
                userName: 'Ahmed Mohamed',
                time: '2h',
                text:
                'Beautiful day! 🌅 Enjoying the weather and spending time with friends.',
                image: AppImages.post1,
              ),
              const FacebookPost(
                userName: 'Mariam Ali',
                time: '5h',
                text:
                'Some moments are worth remembering forever ❤️',
                image: AppImages.post2,
              ),
              const FacebookPost(
                userName: 'Omar Hassan',
                time: '1d',
                text:
                'Weekend vibes! ☀️',
                image: AppImages.post3,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
