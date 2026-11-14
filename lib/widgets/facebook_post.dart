import 'package:flutter/material.dart';

class FacebookPost extends StatefulWidget {
  final String userName;
  final String time;
  final String text;
  final String image;

  const FacebookPost({
    super.key,
    required this.userName,
    required this.time,
    required this.text,
    required this.image,
  });

  @override
  State<FacebookPost> createState() => _FacebookPostState();
}

class _FacebookPostState extends State<FacebookPost> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 22,
                  backgroundColor: Color(0xFF1877F2),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.userName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          Text(
                            widget.time,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Icon(
                            Icons.public,
                            size: 13,
                            color: Colors.grey.shade600,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              widget.text,
              style: const TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            height: 280,
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey.shade300,
                  child: const Icon(
                    Icons.image,
                    size: 60,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.thumb_up,
                  size: 18,
                  color: Color(0xFF1877F2),
                ),
                const SizedBox(width: 5),
                const Text('124'),
                const Spacer(),
                Text(
                  '18 comments',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Row(
            children: [
              Expanded(
                child: TextButton.icon(
                  onPressed: () {
                    setState(() {
                      liked = !liked;
                    });
                  },
                  icon: Icon(
                    liked ? Icons.thumb_up : Icons.thumb_up_outlined,
                    color: liked ? const Color(0xFF1877F2) : Colors.grey.shade700,
                  ),
                  label: Text(
                    'Like',
                    style: TextStyle(
                      color: liked ? const Color(0xFF1877F2) : Colors.grey.shade700,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment_outlined,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    'Comment',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share_outlined,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    'Share',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
