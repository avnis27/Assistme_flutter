import 'package:flutter/material.dart';

class Logout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
       child: Container(
           height: 150,
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
                SizedBox(
                  height: 25,
                ),
                Text(
                   'Are you sure, you want to logout ? ',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 12,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w500,
                     color: Color(0xFF3D3D71),
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
                         'LogOut',
                         style: TextStyle(
                             fontFamily: 'Montserrat',
                             fontWeight: FontWeight.w400,
                             fontSize: 13.0,
                         color: Colors.white),
                       ),
                       onPressed: () {

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
                         color: Color(0xFFECECEC)
                     ),
                     child: FlatButton(
                       onPressed: () {

                       },
                       child: Text('Cancel',
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
           ))

   );


  }
}
