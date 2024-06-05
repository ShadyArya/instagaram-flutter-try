import 'package:flutter/material.dart';
import 'package:instagram/widgets/post_widget.dart';
import 'package:instagram/widgets/story_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // StorySection
          StorySection(),
      
          SizedBox(height: 16),
          //PostSection
          Column(
            children: List.generate(10, (index)=>PostWidget(),
            ),
          ),

          SizedBox(height: 80),
        ],
      ),
    );
  }


}

class StorySection extends StatelessWidget {
  const StorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              StoryWidget(
                imageUrl: 'https://miro.medium.com/v2/resize:fit:2400/1*3f32L998jt3-LnxExUG9PA.png',
                userName: 'Shady'),
              StoryWidget(
                  imageUrl: 'https://miro.medium.com/v2/resize:fit:2400/1*3f32L998jt3-LnxExUG9PA.png',
                  userName: 'Shady'),
              StoryWidget(
                  imageUrl: 'https://miro.medium.com/v2/resize:fit:2400/1*3f32L998jt3-LnxExUG9PA.png',
                  userName: 'Shady'),
              StoryWidget(
                  imageUrl: 'https://miro.medium.com/v2/resize:fit:2400/1*3f32L998jt3-LnxExUG9PA.png',
                  userName: 'Shady'),
              StoryWidget(
                  imageUrl: 'https://miro.medium.com/v2/resize:fit:2400/1*3f32L998jt3-LnxExUG9PA.png',
                  userName: 'Shady'),
              StoryWidget(
                  imageUrl: 'https://miro.medium.com/v2/resize:fit:2400/1*3f32L998jt3-LnxExUG9PA.png',
                  userName: 'Shady'),
            ]
          )
        ],
      ),
    );
  }
}

