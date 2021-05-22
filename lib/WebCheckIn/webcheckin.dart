import 'package:assistme/BookingServices/bookingservicestwo.dart';
import 'package:assistme/WebCheckIn/webcheckyes.dart';
import 'package:flutter/material.dart';

class WebCheckIN extends StatefulWidget{
  @override
  _WebCheckIn createState()=> _WebCheckIn();
}
class _WebCheckIn extends State<WebCheckIN>{
  @override
  Widget build(BuildContext context) {
  return  Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
          height: 210,
          //width: 400,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right:4.0),
                child: Align(
                  alignment: Alignment(1,-.0),
                  child: Container(
                    color: Color(0xFFFFFFFF),
                    child: GestureDetector
                      (onTap: (){
                      Navigator.of(context).pop();
                    },
                        child: Icon(Icons.close)),
                  ),
                ),
              ),
           /*   Container(
                color: Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.only(left: 250,),
                  child: GestureDetector
                    (onTap: (){
                    Navigator.of(context).pop();
                  },
                      child: Icon(Icons.close)),

                ),
              ),*/
              SizedBox(
                height: 20,
              ),
              Text(
                'Q-ASSIST',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF3D3D71),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  'Do you need any assistance with web check-in? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3D3D71),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 Container(
                   height: 35,
                   width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color(0xFF3D3D71),
                      ),
                      child: FlatButton(
                        child: Text(
                          'Yes',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              fontSize: 13.0,
                            color: Colors.white,),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => WebCheckYes()),
                          );
                        },
                      ),
                    ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 35,
                  width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color(0xFFECECEC),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => BookingCheckAirlines()
                                ),
                          );
                        },
                        child: Text('No',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 13.0,
                            color: Color(0xFF3d3d71))),

                      ),
                    ),

                ],
              ),
            ],
          )));
  }

}