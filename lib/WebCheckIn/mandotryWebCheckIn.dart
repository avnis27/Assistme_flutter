import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class MandatoryWebCheck extends StatefulWidget{
  @override
 _MandatoryWebCheck createState()=> _MandatoryWebCheck();

}
class _MandatoryWebCheck extends State<MandatoryWebCheck>{
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
             SizedBox(height: 30,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('Mandatory Web Check-in',
                  textAlign: TextAlign.center ,
                   style: TextStyle(
                   fontSize: 15,
                     fontFamily: 'Montserrat',
                   fontWeight: FontWeight.w900,
                   color: Colors.white,
                 ),),
                 IconButton(
                   icon: Icon(
                     Icons.arrow_drop_down,
                     size: 35,
                     color: Color(0xFFFD8A0D),
                   ),
                   onPressed: () => {},
                   //debugPrint("item Selected"),
                 ),
               ],
             ),

              Padding(
                padding: const EdgeInsets.only(left:30.0,right: 30),
                child: Text('Complete your government-mandated web check-in for free 48 hr to 60 min before flight. Facilitation fee of ₹100 for airport check-in with assistance.',
                   style: TextStyle(
                     fontSize: 10,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w400,
                     color: Colors.white,
                   ),),
              ),

             SizedBox(
               height: 15,
             ),
             Container(
               width: 300,
               height: 50,
               child: TextFormField(
                 keyboardType: TextInputType.number,
                 //obscureText: true,
                 validator: (value) {
                   if (value.isEmpty) {
                     return 'password cannot be empty';
                   }
                   return null;
                 },
                 cursorColor: Color(0xFFFFFFFF),
                 style: TextStyle( color: Colors.white,
                   fontSize: 18,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.w400,),
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: Color(0xFF3D3D71),
                     border: OutlineInputBorder(
                       borderSide:
                       BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide:
                       BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     prefixIcon: Padding(
                       padding: const EdgeInsets.only(
                           top: 15.0, bottom: 15.0),
                       child: Image(
                         image:
                         AssetImage('assets/images/cardholdericon.png')
                         ,height: 25,
                       ),
                     ),

                     suffixIcon:Padding(
                       padding: const EdgeInsets.only(right: 10,top: 10,bottom: 10),

                        // color: Color(0xFFD5D5D5),
                         child: ClipRRect(
                           child: Container(
                            // height: 7,
                            width: 30,
                           //  height: 30,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(5),
                               color: Color(0xFFD5D5D5),
                             ),
                             child: ClipRRect(
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text(
                                       '6E',
                                       style: TextStyle(
                                         fontSize: 10,
                                         fontFamily: 'Montserrat',
                                         fontWeight: FontWeight.w600,
                                         color: Color(0xFF3D3D71),
                                       ),
                                     ),
                                  Icon(Icons.arrow_drop_down,size: 15,color: Color(0xFF3D3D71),),
                                  /* Padding(
                                     padding: const EdgeInsets.only(right: 15),
                                     child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          color: Color(0xFFFD8A0D),
                                       ),
                                        onPressed: () => {},
                                         //debugPrint("item Selected"),
                                     ),
                                   ),*/
                                   ],
                                 ),
                             ),
                             ),
                         ),
                     ),

                     hintText: 'PNR/BOOKING REFERENCE ',
                     hintStyle: TextStyle(
                       fontSize: 12,
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.w400,
                       color: Color(0xFFffffff), )),
                 autofocus: false,
               ),
             ),
             SizedBox(
               height: 5,
             ),
             Container(
               width: 300,
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
                 style: TextStyle( color: Colors.white,
                   fontSize: 18,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.w400,),
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: Color(0xFF3D3D71),
                     border: OutlineInputBorder(
                       borderSide:
                       BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide:
                       BorderSide(color: Color(0xFF3D3D71)),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     prefixIcon: Padding(
                       padding: const EdgeInsets.only(
                           top: 15.0, bottom: 15.0),
                       child: Image(
                         image:
                         AssetImage('assets/images/adrecticon.png')
                         ,height: 28,
                       ),
                     ),
                     hintText: 'E-mail/Last Name ',
                     hintStyle: TextStyle(
                       fontSize: 16,
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.w400,
                       color: Color(0xFFffffff), )),
                 autofocus: false,
               ),
             ),
             SizedBox(height: 20,),
             Container(
               width: 300,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8),
                 color: Color(0xFF3D3D71),
               ),
               child: FlatButton(
                 onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MandatoryWebCheck()));
                 },
                 child: Text(
                   'Check-IN',
                   style: TextStyle(
                     fontSize: 16,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w600,
                     color: Colors.white,
                   ),
                 ),
               ),
             ),

             SizedBox(height: 30,),
             Padding(
               padding: const EdgeInsets.only(right:105.0),
               child: Text('State wise regulations',
                 style: TextStyle(
                   fontSize: 14,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.w600,
                   color: Colors.white,
                 ),),
             ),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                  Text('Before you travel, please check the appli\ncable rules of the arrival city and state.',
                       style: TextStyle(
                         fontSize: 10,
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.w500,
                         color: Colors.white,
                       ),),
                   Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: Image(
                       image:
                       AssetImage('assets/images/statewiseicon.png')
                       ,height: 50,
                     ),
                   ),
                 ],
               ),

             Padding(
               padding: const EdgeInsets.only(right:220.0),
               child: Text('Know More',style: TextStyle(
                 fontSize: 10,
                 decoration: TextDecoration.underline,
                 fontFamily: 'Montserrat',
                 fontWeight: FontWeight.w500,
                 color: Colors.white,
               ),),
             ),



             SizedBox(height: 30,),
             Padding(
               padding: const EdgeInsets.only(right:100.0),
               child: Text('Mandatory baggage tag',
                 style: TextStyle(
                   fontSize: 14,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.w600,
                   color: Colors.white,
                 ),),
             ),

           Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   //SizedBox(height: 30,),
                   Text('Add your check-in baggage and generate \nbaggage tag 48 hr to 60 min before your\nflight.',
                     style: TextStyle(
                       fontSize: 10,
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.w500,
                       color: Colors.white,
                     ),),
                   Padding(
                     padding: const EdgeInsets.only(left: 1),
                     child: Image(
                       image:
                       AssetImage('assets/images/baggageicon.png')
                       ,height: 90,
                     ),
                   ),
                 ],
               ),
             Padding(
               padding: const EdgeInsets.only(right:220.0),
               child: Text('Know More',style: TextStyle(
                 fontSize: 10,
                 decoration: TextDecoration.underline,
                 fontFamily: 'Montserrat',
                 fontWeight: FontWeight.w500,
                 color: Colors.white,
               ),),
             ),
             SizedBox(height: 45,),
             Padding(
               padding: const EdgeInsets.only(left: 25,right: 25),
               child: Text('*All passengers except unaccompanied minors (UNMR), passengers with medical case (MEDA) and those travelling on a stretcher (STCR).',style: TextStyle(
                 fontSize: 10,
                 decoration: TextDecoration.underline,
                 fontFamily: 'Montserrat',
                 fontWeight: FontWeight.w500,
                 color: Colors.white,
               ),),
             ),

             SizedBox(
               height: 20,
             ),
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