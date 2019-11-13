import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.purpleAccent,
          padding: EdgeInsets.only(left: 15.0, top: 40.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Bangladesh Airlines",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Raleway',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Dhaka to Chiangmai",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Raleway',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "US Airlines",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Raleway',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "NY to Boston",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Raleway',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              FlightImageAsset(),
              FlightBookButton(),
            ],
          )),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/flight.png");
    Image image = Image(image: assetImage, width: 200.0, height: 200.0);

    return Container(child: image);
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 50.0,
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Center(
          child: Text(
            "Book your flight",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        elevation: 6.0,
        onPressed: () => bookFlight(context),
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
        title: Text("Booked successfully"),
        content: Text("Have a pleasant flight"));

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
