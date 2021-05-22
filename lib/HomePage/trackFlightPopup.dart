import 'package:flutter/material.dart';

class TrackFlightPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      height: 130,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: Align(
              alignment: Alignment(1, -.0),
              child: Container(
                color: Color(0xFFFFFFFF),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.close)),
              ),
            ),
          ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
        child:Text(
              'Worried about the flight status?   \n\nYou can always keep a check on your flights by using Track Flight feature.\nClick to Explore more!',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3d3d71),
                  fontSize: 12.0))),
        ],
      ),
    ));
  }
}
