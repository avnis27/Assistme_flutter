import 'package:flutter/material.dart';

class beforeloginPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      height: 100,
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
          //Container(
          // height: 310,
          // width: double.infinity,
          SizedBox(
            width: 10,
          ),
          Row(
            children: <Widget>[
              Image.asset(
                'assets/images/erroricon.png',
                width: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                  'Lorem Ipsum is simply dummy text \nof theprinting and typesetting \nindustry. Lorem Ipsum has been \nthe indu',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3d3d71),
                      fontSize: 12.0))
            ],
          )
        ],
      ),
    ));
  }
}
