import 'package:flutter/material.dart';
import 'package:flutter_news/widgets/section_title.dart';

class TopStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  TopStoriesItem(
                    title: 'The World Global Warning Annual Summit',
                    author: 'Michael Adams',
                    time: '15 min',
                  ),
                  Divider(),
                  TopStoriesItem(
                    title: 'The World Global Warning Annual Summit',
                    author: 'Michael Adams',
                    time: '1 hour',
                  ),
                  Divider(),
                  TopStoriesItem(
                    title: 'The World Global Warning Annual Summit',
                    author: 'Michael Adams',
                    time: '15 min',
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

class TopStoriesItem extends StatelessWidget {
  final String title;
  final String author;
  final String time;

  TopStoriesItem({this.title, this.author, this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 100,
          height: 100,
          child: Image(
            image: ExactAssetImage('assets/images/placeholder_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: <Widget>[
                Text(
                  this.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(this.author),
                    Row(children: <Widget>[
                      Icon(Icons.timer),
                      Text(this.time),
                    ]),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
