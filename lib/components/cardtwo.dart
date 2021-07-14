import 'package:flutter/material.dart';


class CardTwo extends StatelessWidget {
 CardTwo({this.image,this.title});

final String image;
final String title;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child:
          Stack(alignment: AlignmentDirectional.bottomEnd, children: [
        Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            image: DecorationImage(
                image: AssetImage("$image.jpg"),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          height: 150,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0)),
            color: Color(0xFF2B2D47),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 170.0),
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 25.0,
                      ),
                      onPressed: () {}),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('23 Jan 2024'),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Color(0xFF1F2137)),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Action'),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Color(0xFF1F2137)),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Adventure'),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Color(0xFF1F2137)),
                    ),
                  ]),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('download')),
                ],
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
