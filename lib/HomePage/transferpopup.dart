import 'package:flutter/material.dart';

class TransferPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      height: 250,
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
         child: Text(
              'We offers a safe, convenient and premium transfer services from and to Airport in the country and overseas. \n\nOur professional chauffeurs and transport concierge team is keen to assist with airport terminal configurations, \n\noperating schedules, ongoing route traffic and other relevant information to ensure your transfer to get relaxed and peace of mind, where you need to be. \nClick to Explore more!',
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
