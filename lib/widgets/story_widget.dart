import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key, required this.imageUrl, required this.userName,
  });

  final String imageUrl;
  final String userName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(imageUrl)
          ),
          SizedBox(height: 8),
          Text(userName)
        ],
      ),
    );
  }
}
