import 'package:assistme/TransferServices/airporttransfer.dart';
import 'package:assistme/TransferServices/citytransfer.dart';
import 'package:flutter/material.dart';

class TransferServices extends StatefulWidget{
  @override
  _TransferServices createState()=> _TransferServices();
}
class _TransferServices extends State<TransferServices>{
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
          height: 200,
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
            SizedBox(
              height: 30,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF3D3D71),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AirportTransfer()),
                              );
                              },
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Image.asset(
                                'assets/images/airporticon.png',
                              ),
                            ),
                          ),
                        ),
                         Text(
                            'Airport \n Transfer',
                            style: TextStyle(
                              fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              color: Color(0xFF3D3D71),
                            ),
                            textAlign: TextAlign.center,
                          ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF3D3D71),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CityTransfer()),
                              );

                            },
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Image.asset(
                                'assets/images/cityicon.png',
                              ),
                            ),
                          ),
                        ),

                           Text(
                            'City \n Transfer',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF3D3D71),
                            ),
                            textAlign: TextAlign.center,
                          ),

                      ],
                    ),

                  ],
                ),
          ],
        ),



        ),


    );
  }

}