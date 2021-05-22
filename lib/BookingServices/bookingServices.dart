import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/MainScreen/LandingPage.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../paymentDetails.dart';
import 'cartDetails.dart';

class BookingServices extends StatefulWidget{
  @override
  _BookingServicesState createState() => _BookingServicesState();
}

class _BookingServicesState extends State<BookingServices> {
  int _n = 0;
  void add() {
    setState(() {
      _n++;
    });
  }
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }
  int countFavirote= 15;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color(0xFF222244),
     appBar: new AppBar(
       leading:  GestureDetector(
         onTap: (){
           Navigator.pop(context);
         },
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             SizedBox(width: 5,),
             Icon(Icons.arrow_back),
             CircleAvatar(
               maxRadius: 13,
               minRadius: 13,
               child: Image.asset(
                 'assets/images/usericon.png',

               ),
             ),],
         ),
       ),
       titleSpacing: 10,
       title: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             'User Name',
             style: TextStyle(
               fontSize: 10,
               fontFamily: 'Montserrat',
               fontWeight: FontWeight.w500,
             ),
           ),
           Text(
             '9999999999',
             style: TextStyle(
               fontSize: 9,
               fontFamily: 'Montserrat',
               fontWeight: FontWeight.w400,
             ),
           )
         ],
       ),

       elevation: 1,
       // centerTitle: true,
       backgroundColor: Color(0xFF3D3D71),

       /*title: Image(
          image:
          AssetImage('assets/images/qassist_logo.png',),
           width: 100,
           fit: BoxFit.contain,
        ),
         // fit: BoxFit.contain,
        //),*/
       actions: <Widget>[
         Row(
           children: [
             InkWell(
                 child: Image.asset(
                   'assets/images/notibellicon.png',
                 )),
             SizedBox(
               width: 20,
             ),
             InkWell(
                 child: Image.asset(
                   'assets/images/chaticon.png',
                 )),
             SizedBox(
               width: 20,
             ),
             Badge(
               padding: EdgeInsets.all(3),
               badgeContent: Text('$countFavirote',
                 style:TextStyle(
                     fontSize: 8,
                     color: Colors.white,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w600),),
               child:  InkWell(
                   onTap: () {
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => CartDetails()));},
                   child: Image.asset(
                       'assets/images/carttwoicon.png'
                   )),),
             IconButton(
               icon: Icon(
                 Icons.more_vert,
                 color: Color(0xFFFD8A0D),
               ),
               onPressed: () => {
               Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()))
               },
               //debugPrint("item Selected"),
             ),
           ],
         ),
       ],
     ),
     body: SingleChildScrollView(
       child: Center(
         child: Column(
           children: <Widget>[
             SizedBox(height: 20,),
             Text('BOOK SERVICES',style: TextStyle(
                 fontSize: 16,
                 fontFamily: 'Montserrat',
                 fontWeight: FontWeight.w900,
                 //color: Color(0xFF3D3D71)
                 color: Colors.white
             ),),

             SizedBox(
               height: 30,
             ),

             Container(
               height: 50,
               width: 290,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   color: Color(0xFF3d3D71)),
               child: Row(
                 children: <Widget>[
                   SizedBox(
                     width: 10,
                   ),
                   Image(
                     image: AssetImage('assets/images/airporticon.png'),
                     height: 18,
                   ),
                   SizedBox(
                     width: 15,
                   ),
                   Text(
                     'Airport',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 15,
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                   Text(
                     '(Where You Required)',
                     style: TextStyle(
                       color: Color(0xFFEFEEEE),
                       fontSize: 12,
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                   Spacer(),
                   Icon(
                     Icons.arrow_drop_down,
                     color: Color(0xFFFD8A0D),
                   ),
                 ],
               ),
             ),
             SizedBox(
               height: 10,
             ),
             Container(
               width: 290,
               height: 50,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                 //obscureText: true,
                 validator: (value) {
                   if (value.isEmpty) {
                     return 'password cannot be empty';
                   }
                   return null;
                 },
                 cursorColor: Color(0xFFFFFFFF),
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.w400,
                 ),
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: Color(0xFF3D3D71),
                     // hoverColor: Color(0xFF3D3D71),
                     border: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     prefixIcon: Padding(
                       padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                       child: Image(
                         image: AssetImage('assets/images/porterrequired.png'),
                       ),
                     ),
                     hintText: 'Flight ',
                     hintStyle: TextStyle(
                         color: Color(0xFFFFFFFF),
                         fontSize: 15,
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.w400)),
                 autofocus: false,
               ),
             ),
             SizedBox(
               height: 10,
             ),
             Container(
               width: 290,
               height: 50,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                 //obscureText: true,
                 validator: (value) {
                   if (value.isEmpty) {
                     return 'password cannot be empty';
                   }
                   return null;
                 },
                 cursorColor: Color(0xFFFFFFFF),
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.w400,
                 ),
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: Color(0xFF3D3D71),
                     // hoverColor: Color(0xFF3D3D71),
                     border: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     prefixIcon: Padding(
                       padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                       child: Image(
                         image: AssetImage('assets/images/flighticon.png'),
                       ),
                     ),
                     hintText: 'Flight Number ',
                     hintStyle: TextStyle(
                         color: Color(0xFFFFFFFF),
                         fontSize: 15,
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.w400)),
                 autofocus: false,
               ),
             ),
             SizedBox(
               height: 10,
             ),
             Container(
               width: 290,
               height: 50,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                 //obscureText: true,
                 validator: (value) {
                   if (value.isEmpty) {
                     return 'password cannot be empty';
                   }
                   return null;
                 },
                 cursorColor: Color(0xFFFFFFFF),
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.w400,
                 ),
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: Color(0xFF3D3D71),
                     // hoverColor: Color(0xFF3D3D71),
                     border: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     prefixIcon: Padding(
                       padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                       child: Image(
                         image: AssetImage('assets/images/servicesicon.png'),
                       ),
                     ),
                     hintText: 'Type of service ',
                     hintStyle: TextStyle(
                         color: Color(0xFFFFFFFF),
                         fontSize: 15,
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.w400)),
                 autofocus: false,
               ),
             ),
             SizedBox(
               height: 10,
             ),
             Container(
               width: 290,
               height: 50,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                 //obscureText: true,
                 validator: (value) {
                   if (value.isEmpty) {
                     return 'password cannot be empty';
                   }
                   return null;
                 },
                 cursorColor: Color(0xFFFFFFFF),
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.w400,
                 ),
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: Color(0xFF3D3D71),
                     // hoverColor: Color(0xFF3D3D71),
                     border: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     //prefixIcon: Padding(
                      // padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      // child: Image(
                       //  image: AssetImage('assets/images/dateicon.png'),
                     //  ),
                    // ),
                     hintText: 'Details of service ',
                     hintStyle: TextStyle(
                         color: Color(0xFFFFFFFF),
                         fontSize: 15,
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.w400)),
                 autofocus: false,
               ),
             ),
             SizedBox(
               height: 10,
             ),
             Container(
               width: 290,
               height: 50,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                 //obscureText: true,
                 validator: (value) {
                   if (value.isEmpty) {
                     return 'password cannot be empty';
                   }
                   return null;
                 },
                 cursorColor: Color(0xFFFFFFFF),
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.w400,
                 ),
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: Color(0xFF3D3D71),
                     // hoverColor: Color(0xFF3D3D71),
                     border: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     prefixIcon: Padding(
                       padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                       child: Image(
                         image: AssetImage('assets/images/dateicon.png'),
                       ),
                     ),
                     hintText: 'Class of travel',
                     hintStyle: TextStyle(
                         color: Color(0xFFFFFFFF),
                         fontSize: 15,
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.w400)),
                 autofocus: false,
               ),
             ),
             SizedBox(
               height: 15,
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('Adults',style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                    // CustomStepper(),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF3d3D71)),
                          child: new FloatingActionButton(
                            onPressed: minus,
                            child: new Icon(
                                const IconData(59758, fontFamily: 'MaterialIcons',),
                                color: Colors.white),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                       SizedBox(
                         width: 5,
                       ),
                        new Text('$_n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF3d3D71)),
                          child: new FloatingActionButton(
                            onPressed: add,
                            child: new Icon(Icons.add, color: Colors.white,),
                            backgroundColor: Colors.transparent,),
                        ),

                      ],
                    ),
                  ],
                ),

                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text('Children',style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        // CustomStepper(),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF3d3D71)),
                          child: new FloatingActionButton(
                            onPressed: minus,
                            child: new Icon(
                                const IconData(59758, fontFamily: 'MaterialIcons',),
                                color: Colors.white),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        new Text('$_n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF3d3D71)),
                          child: new FloatingActionButton(
                            onPressed: add,
                            child: new Icon(Icons.add, color: Colors.white,),
                            backgroundColor: Colors.transparent,),
                        ),

                      ],
                    ),
                  ],
                ),
                    SizedBox(
                      width: 15,
                    ),
                Column(
                  children: [
                    Text('Infant',style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        // CustomStepper(),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF3d3D71)),
                          child: new FloatingActionButton(
                            onPressed: minus,
                            child: new Icon(
                                const IconData(59758, fontFamily: 'MaterialIcons',),
                                color: Colors.white),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        new Text('$_n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF3d3D71)),
                          child: new FloatingActionButton(
                            onPressed: add,
                            child: new Icon(Icons.add, color: Colors.white,),
                            backgroundColor: Colors.transparent,),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),



             SizedBox(
               height: 15,
             ),
             Container(
               width: 290,
               height: 50,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                 //obscureText: true,
                 validator: (value) {
                   if (value.isEmpty) {
                     return 'password cannot be empty';
                   }
                   return null;
                 },
                 cursorColor: Color(0xFFFFFFFF),
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.w400,
                 ),
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: Color(0xFF3D3D71),
                     // hoverColor: Color(0xFF3D3D71),
                     border: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     prefixIcon: Padding(
                       padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                       child: Image(
                         image: AssetImage('assets/images/dateicon.png'),
                       ),
                     ),
                     hintText: 'Service Date & Time',
                     hintStyle: TextStyle(
                         color: Color(0xFFFFFFFF),
                         fontSize: 15,
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.w400)),
                 autofocus: false,
               ),
             ),

             SizedBox(
               height: 50,
             ),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Container(
                   width: 130,
                   height: 45,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(8.0),
                     color: Color(0xFF3D3D71),
                   ),
                   child: FlatButton(
                     onPressed: () {
                       Navigator.of(context).push(
                         MaterialPageRoute(
                             builder: (context) => AfterLooginLandingPage()),
                       );
                     },
                     child: Text(
                       'ADD TO CART',
                       style: TextStyle(color: Colors.white ,fontSize: 12,
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.w600,),
                     ),
                     //  color: Color(0xFF9F9F9F),
                   ),
                 ),

                 SizedBox(width: 25,),
                 Container(
                   width: 130,
                   height: 45,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(8.0),
                     color: Color(0xFF3D3D71),
                   ),
                   child: FlatButton(
                     onPressed: () {
                       Navigator.of(context).push(
                         MaterialPageRoute(
                             builder: (context) => PaymentDetails()),
                       );
                     },
                     child:
                     Text('PROCEED', style: TextStyle(color: Colors.white, fontSize: 12,
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.w600,)),

                   ),
                 ),
               ],
             ),

SizedBox(
  height: 20,
)
           ],
         ),

       ),


     ),
     bottomNavigationBar: Padding(
       padding: const EdgeInsets.only(right: 8.0, left: 8.0),
       child: Container(
         child: ClipRRect(
           borderRadius: BorderRadius.only(
               topLeft: Radius.circular(15), topRight: Radius.circular(15)),
           child: Container(
               height: 60,
               color: Color(0xFF3D3D71),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget>[
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> AfterLooginLandingPage()));
                     },
                     child: Container(
                         decoration: BoxDecoration(
                           // borderRadius: BorderRadius.circular(20),
                           shape: BoxShape.circle,
                           color: Color(0xFFFD8A0D),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(7.0),
                           child: Image.asset(
                             'assets/images/home.png',
                           ),
                         )),
                   ),
                   GestureDetector(

                       onTap: () {
                         showDialog(
                             context: context,
                             builder: (BuildContext context) {
                               return WebCheckIN();
                             });

                     },
                     child: Container(
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           // borderRadius: BorderRadius.circular(20),
                           color: Color(0xFFFD8A0D),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(7.0),
                           child: Image.asset(
                             'assets/images/checkbutton.png',
                           ),
                         )),
                   ),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> WackUpCall()));
                     },
                     child: Container(
                         decoration: BoxDecoration(
                           //borderRadius: BorderRadius.circular(20),
                           shape: BoxShape.circle,
                           color: Color(0xFFFD8A0D),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(7.0),
                           child: Image.asset(
                             'assets/images/wakeupbottom.png',
                           ),
                         )),
                   ),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Setting()));
                     },
                     child: Container(
                         decoration: BoxDecoration(
                           // borderRadius: BorderRadius.circular(20),
                           shape: BoxShape.circle,
                           color: Color(0xFFFD8A0D),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(7.0),
                           child: Image.asset(
                             'assets/images/settingsbutton.png',
                           ),
                         )),
                   ),
                 ],
               ),
             ),

         ),
       ),
     ),

   );
  }
}





