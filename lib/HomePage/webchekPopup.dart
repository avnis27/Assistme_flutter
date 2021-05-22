import 'package:flutter/material.dart';

class WebCheckPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      height: 240,
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
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child:
          Text(
              'Web Check-in has been made mandatory for most of the airlines and there are some airlines which are charging you if you don t do web check-in. \n\nWe have come up with a one stop shop for web check-in regardless of which airlines you are travelling on. \n\nIf you need additional assistance we will assist you further at a very nominal cost. Click to Explore more!',
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
