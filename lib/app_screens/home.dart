import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        alignment: Alignment.center,
        color: Colors.purpleAccent,
        child:Row(
          children: <Widget>[
            Expanded(child:
            Text(
              "Dhaka", textDirection: TextDirection.ltr,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Raleway',
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300,
                fontSize: 75.0,
              ),
            ),
            ),
            Expanded(child:
            Text(
              "Shanhai", textDirection: TextDirection.ltr,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Raleway',
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300,
                fontSize: 75.0,
              ),
            ),
            ),
            Expanded(child:
            Text(
              "Kualalampur", textDirection: TextDirection.ltr,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Raleway',
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300,
                fontSize: 75.0,
              ),
            ),
            ),



          ],

        ),
      ),
    );

  }
}
