import 'package:flutter/material.dart';
import 'package:test_app/components/cardone.dart';
import 'package:test_app/components/buttonone.dart';
import 'package:test_app/components/buttontwo.dart';
import 'package:test_app/components/cardtwo.dart';

class StartingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'John',
          style: TextStyle(
              color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.grey[400],
          radius: 21,
          child: CircleAvatar(
            radius: 22.0,
            backgroundImage: AssetImage('lib/assets/profile.jpg'),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(
            icon: Icon(
              Icons.notifications,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Popular',
              style: TextStyle(
                  color: Colors.blue[300],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
                child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                CardOne(
                  title: 'FarCry 6',
                  image: 'lib/assets/farcry2',
                ),
                CardOne(
                  title: 'FarCry 5',
                  image: 'lib/assets/farcry3',
                ),
                CardOne(
                  title: 'FarCry 6',
                  image: 'lib/assets/farcry4',
                ),
              ]),
            )),
            SizedBox(
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  ButtonOne(
                    text: 'All',
                  ),
                  ButtonOne(
                    text: 'PlayStation',
                  ),
                  ButtonOne(
                    text: 'XBox',
                  ),
                  ButtonOne(
                    text: 'PC',
                  ),
                  ButtonOne(
                    text: 'Cloud',
                  ),
                ]),
              ),
            ),
            SizedBox(
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  ButtonTwo(
                    text: 'All',
                  ),
                  ButtonTwo(
                    text: 'Action',
                  ),
                  ButtonTwo(
                    text: 'Adventure',
                  ),
                  ButtonTwo(
                    text: 'Puzzle',
                  ),
                  ButtonTwo(
                    text: 'Fantacy',
                  ),
                  ButtonTwo(
                    text: 'Battle Ground',
                  ),
                ]),
              ),
            ),
            Text(
              'today',
              style: TextStyle(
                  color: Colors.yellow[100],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            CardTwo(title: 'FarCry5', image: 'lib/assets/farcry4'),
            CardTwo(title: 'FarCry4', image: 'lib/assets/farcry5'),
            CardTwo(title: 'FarCry6', image: 'lib/assets/farcry2'),
          ],
        ),
      ),
    );
  }
}
