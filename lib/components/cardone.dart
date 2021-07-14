import 'package:flutter/material.dart';

class CardOne extends StatelessWidget {
  CardOne({this.image,this.title});

  final String image;
  final String title;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Container(
                  width: 300.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(20.0)),
                    image: DecorationImage(
                        image: AssetImage("$image.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 75,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0)),
                      color: Color(0xFF2B2D47)),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 125.0),
                          IconButton(
                              icon: Icon(Icons.search),
                              onPressed: () {}),
                        ]),
                  ),
                )
              ]),
        ],
      ),
    );
  }
}