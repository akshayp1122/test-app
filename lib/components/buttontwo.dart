import 'package:flutter/material.dart';

class ButtonTwo extends StatelessWidget {
 ButtonTwo({this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
                         child: ConstrainedBox(constraints: BoxConstraints.tightFor(
                           height:60.0
                         ),
                                      child: ElevatedButton(
                 onPressed: () {},
                 child: Text(text),
                 style: ElevatedButton.styleFrom(
                     shape: StadiumBorder(),
                     primary: Color(0xFF2B2D47)),
               ),
                         ),
    );
  }
}