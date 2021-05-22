import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:assistme/paymentDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartDetails extends StatefulWidget{
  @override
  _CartDetails createState()=> _CartDetails();
}
class _CartDetails extends State<CartDetails>{
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
             InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> CartDetails()));
                 },
                 child: Image.asset(
                   'assets/images/carttwoicon.png',
                 )),
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
       child: Column(
         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
           SizedBox(
             height: 30,
           ),
           Text('CART DETAILS',
            style: TextStyle(
       fontSize: 16,
       fontFamily: 'Montserrat',
       fontWeight: FontWeight.w900,
           color: Color(0xFFFFFFFF)
       //lor: Colors.white),),
     ),
           ),
           SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentDetails()));
                 },
               child:Container(
                 width: 220,
                 child: Card(
                   color: Color(0xFF3d3d71),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(
                       Radius.circular(8.0),
                     ),
                   )
                   ,child: Padding(
                     padding: const EdgeInsets.only(left:12.0,right: 12.0,bottom: 10,top: 10),
                     child: Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Text('AIRPORT TRANSFER', style: TextStyle(
                               fontSize: 10,
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.w400,
                               color: Color(0xFFD29930)
                             //lor: Colors.white),),
                           ),),
                           SizedBox(
                             width: 30,
                           ),
                           Text('3.00', style: TextStyle(
                               fontSize: 14,
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.w500,
                               color: Color(0xFFFFFFFF),
                             //lor: Colors.white),),
                           ),),
                         ],
                 ),
                         Padding(
                           padding: const EdgeInsets.only(right:120.0),
                           child: Text('Car Rental',
                             //textAlign:TextAlign.right,
                             style: TextStyle(
                             fontSize: 8,
                             fontFamily: 'Montserrat',
                             fontWeight: FontWeight.w400,
                             color: Color(0xFFFFFFFF),
                             //lor: Colors.white),),
                           ),),
                         ),
                       ],
                     ),
                   ),
                 ),
               ),),
               SizedBox(
                 width: 10,
               ),
               Container(
                 height: 30,
                 width: 30,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5
                   ),
                 color: Color(0xFF3D3D71)),
                 child: InkWell(
                   child: Padding(
                     padding: const EdgeInsets.all(5.0),
                   child: Image.asset(
                       'assets/images/latericon.png',
                       width: 0,
                       height: 0),
                 ),),
               ),
               SizedBox(
                 width: 10,
               ),
               Container(
                  height: 30,
                 width: 30,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5
                     ),
                     color: Color(0xFF3D3D71)),
                 child: InkWell(
                   child: Padding(
                     padding: const EdgeInsets.all(5.0),
                   child: Image.asset(
                       'assets/images/deleteicon.png',
                       width: 0,
                       height: 0),),
                 ),
               )
             ]
           ),

           SizedBox(
             height: 10,
           ),


           Row(
             mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentDetails()));
                     },
                     child: Container(
                   width: 220,
                   child: Card(
                     color: Color(0xFFD9D9D9),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(
                         Radius.circular(8.0),
                       ),
                     )
                     ,child: Padding(
                     padding: const EdgeInsets.only(left:12.0,right: 12.0,bottom: 10,top: 10),
                     child: Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Text('AIRPORT TRANSFER', style: TextStyle(
                                 fontSize: 10,
                                 fontFamily: 'Montserrat',
                                 fontWeight: FontWeight.w400,
                                 color: Color(0xFF3D3D71)
                               //lor: Colors.white),),
                             ),),
                             SizedBox(
                               width: 30,
                             ),
                             Text('3.00', style: TextStyle(
                               fontSize: 14,
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.w500,
                               color: Color(0xFFFFFFFF),
                               //lor: Colors.white),),
                             ),),
                           ],
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right:120.0),
                           child: Text('Car Rental', style: TextStyle(
                             fontSize: 8,
                             fontFamily: 'Montserrat',
                             fontWeight: FontWeight.w400,
                             color: Color(0xFFFFFFFF),
                             //lor: Colors.white),),
                           ),),
                         ),
                       ],
                     ),
                   ),
                   ),
                 )  ),
                 SizedBox(
                   width: 10,
                 ),
                 Container(
                   height: 30,
                   width: 30,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5
                       ),
                       color: Color(0xFF3D3D71)),
                   child: InkWell(
                     child: Padding(
                       padding: const EdgeInsets.all(5.0),
                       child: Image.asset(
                           'assets/images/latericon.png',
                           width: 0,
                           height: 0),
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 10,
                 ),
                 Container(
                   height: 30,
                   width: 30,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5
                       ),
                       color: Color(0xFF3D3D71)),
                   child: InkWell(
                     child: Padding(
                       padding: const EdgeInsets.all(5.0),
                     child: Image.asset(
                         'assets/images/deleteicon.png',
                         width: 0,
                         height: 0),
                   ),),
                 )
               ]
           ),

  SizedBox(
    height: 200,
  ),
           Container(
             width: 300,
             height: 160,
             child: Card(
                 color: Color(0xFFF1F1F1),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(
                     Radius.circular(8.0),
                   ),
                 ),
               child: Column(
                 children: <Widget>[

                /*   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             Text('Airport Transfer',style: TextStyle(
                               fontSize: 14,
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.w500,
                               color: Color(0xFF7D7D7D),
                               //lor: Colors.white),),
                             ),),
                             SizedBox(
                               height: 10,
                             ),
                             Text('TOTAL',style: TextStyle(
                               fontSize: 12,
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.w700,
                               color: Color(0xFF7D7D7D),
                               //lor: Colors.white),),
                             ),),
                           ],
                         ),
                       ),
                      // SizedBox(width: 30,),
                       Padding(
                         padding: const EdgeInsets.only(left:18.0),
                         child: Column(
                           children: <Widget>[
                             SizedBox(
                               width: 30,
                             ),
                             Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                 Text('3:00',style: TextStyle(
                                   fontSize: 12,
                                   fontFamily: 'Montserrat',
                                   fontWeight: FontWeight.w500,
                                   color: Color(0xFF7D7D7D),
                                   //lor: Colors.white),),
                                 ),),
                                 IconButton(
                                   icon: Icon(
                                     Icons.arrow_drop_down_circle_outlined,
                                     color: Color(0xFF3D3D71),
                                   ),
                                   onPressed: () => {},
                                   //debugPrint("item Selected"),
                                 ),
                               ],
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Text('6:00',style: TextStyle(
                               fontSize: 12,
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.w500,
                               color: Color(0xFF7D7D7D),
                               //lor: Colors.white),),
                             ),),

                           ],
                         ),
                       )


                     ],
                   ),*/


                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Text('Airport Transfer',style: TextStyle(
                           fontSize: 14,
                           fontFamily: 'Montserrat',
                           fontWeight: FontWeight.w500,
                           color: Color(0xFF7D7D7D),
                           //lor: Colors.white),),
                         ),),
                         SizedBox(
                           width: 30,
                         ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Text('3:00',style: TextStyle(
                               fontSize: 12,
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.w500,
                               color: Color(0xFF7D7D7D),
                               //lor: Colors.white),),
                             ),),
                             IconButton(
                               icon: Icon(
                                 Icons.arrow_drop_down_circle_outlined,
                                 color: Color(0xFF3D3D71),
                               ),
                               onPressed: () => {},
                               //debugPrint("item Selected"),
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Text('TOTAL',style: TextStyle(
                           fontSize: 12,
                           fontFamily: 'Montserrat',
                           fontWeight: FontWeight.w700,
                           color: Color(0xFF7D7D7D),
                           //lor: Colors.white),),
                         ),),
                         SizedBox(
                           width: 130,
                         ),
                         Text('6:00',style: TextStyle(
                           fontSize: 12,
                           fontFamily: 'Montserrat',
                           fontWeight: FontWeight.w500,
                           color: Color(0xFF7D7D7D),
                           //lor: Colors.white),),
                         ),),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Container(
                     width: 180,
                     height: 40,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: Color(0xFF3d3d71)),
                     child: FlatButton(
                         onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentDetails()));
                         },
                         child: Text(
                           'PROCEED TO PAY',
                           style: TextStyle(
                               fontSize: 12,
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.w600,
                               //color: Color(0xFF3D3D71)
                               color: Colors.white),
                         )),
                   ),
                   SizedBox(
                     height: 10,
                   ),

                 ],
               ),
             ),
           )
         ],
       ) ,
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
                         //child: Image(image: AssetImage('assets/images/home.png',),),
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