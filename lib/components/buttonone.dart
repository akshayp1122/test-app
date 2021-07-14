import 'package:flutter/material.dart';

class ButtonOne extends StatelessWidget {
  ButtonOne({this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
                        
                 child: ElevatedButton(
                 onPressed: () {},
                 child: Text(text),
                 style: ElevatedButton.styleFrom(
                     shape: StadiumBorder(),
                     primary: Color(0xFF2B2D47)),
               ),
                         );
  }
}