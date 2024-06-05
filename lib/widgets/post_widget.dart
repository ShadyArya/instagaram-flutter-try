import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
      //   header
            Row(
              children: [
                SizedBox(width: 16),
              //   avatar
                CircleAvatar(child: Text('A'),),
                SizedBox(width: 6),
                //   username
                Text('Shady'),
              ],
            ),

        SizedBox(height: 16),
        //   gambar
            Image.network('https://miro.medium.com/v2/resize:fit:2400/1*3f32L998jt3-LnxExUG9PA.png'),

      //   button
        Row(
          children: [
            SizedBox(width: 8),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline)),
            IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline)),
            IconButton(onPressed: (){}, icon: Icon(Icons.share_outlined)),

          ],
        ),

      //   like

        Row(
          children: [
            SizedBox(width: 16),
            CircleAvatar(
              radius: 12 ,
              backgroundImage: NetworkImage('https://miro.medium.com/v2/resize:fit:2400/1*3f32L998jt3-LnxExUG9PA.png'),
            ),
            SizedBox(width: 8),
            Text('liked by'),
            SizedBox(width: 2),
            InkWell(
              child: Text('mine_'),
              onTap: (){
                print('Clicked');
              },
            ),
            SizedBox(width: 2),
            Text('and 313 others...'),
          ],
        ),

      //   description
        Row(
          children: [
            SizedBox(width: 16),
            InkWell(
              child: Text('mine_', style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: (){
                print('Clicked');
              },
            ),
            SizedBox(width: 2),
            Flexible
              (child: Text(' since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                softWrap: true,
                maxLines: 1,
              overflow: TextOverflow.ellipsis,
                )),
          ],
        ),
        SizedBox(height: 32)
      ],
    );
  }
}
