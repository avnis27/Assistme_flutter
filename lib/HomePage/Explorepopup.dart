import 'package:flutter/material.dart';

class ExplorePopup extends StatelessWidget {
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                  'In Explore tab you can view the shops and offers around you. \nWatch this space to get the latest offers and products customized for you. \nClick to Explore more!',
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
