import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatus extends StatelessWidget {
  const MyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://cloudfront-us-east-2.images.arcpublishing.com/reuters/ZKNG6B3LRRPKVETHYF4GQMYZJ4.jpg'),
          ),
          title: Text('My Status'),
          subtitle: Text('Tap to add status update'),
        ),
        Container(
          width: 500,
          height: 40,
          color: Color(0xFFD6D6D6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Text('  Viewed Updates',style: TextStyle(fontSize: 17),),
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://cloudfront-us-east-2.images.arcpublishing.com/reuters/ZKNG6B3LRRPKVETHYF4GQMYZJ4.jpg'),
          ),
          title: Text('Aryan'),
          subtitle: Text('15 minutes ago'),
        ),ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://cloudfront-us-east-2.images.arcpublishing.com/reuters/ZKNG6B3LRRPKVETHYF4GQMYZJ4.jpg'),
          ),
          title: Text('Hadi'),
          subtitle: Text('1 hour minutes ago'),
        ),ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://cloudfront-us-east-2.images.arcpublishing.com/reuters/ZKNG6B3LRRPKVETHYF4GQMYZJ4.jpg'),
          ),
          title: Text('Sami'),
          subtitle: Text('10 hour minutes ago'),
        ),
        Container(
          width: 500,
          height: 40,
          color: Color(0xFFD6D6D6),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('  Muted Updates',style: TextStyle(fontSize: 17),),
              Icon(Icons.arrow_downward)
            ],
          ),
        ),
      ],
    );
  }
}