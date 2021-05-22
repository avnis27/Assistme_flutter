import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/HomePage/FAQ.dart';
import 'package:assistme/HomePage/TermsAndConditions.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';


class ReferAndEarn extends StatefulWidget{
  @override
  _ReferAndEarnState createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
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
       child: Center(
         child: Column(
           children: <Widget>[

             SizedBox(
               height: 20,
             ),
             Text(
               'Refer and Earn',
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
             Padding(
               padding: const EdgeInsets.only(right:70.0),
               child: Text(
                 'Refer and get FREE services',
                 style: TextStyle(
                     fontSize: 16,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w600,
                     color: Color(0xFFFFFFFF)
                   //lor: Colors.white),),
                 ),
               ),
             ),
             SizedBox(
                height: 10,
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text(
                   'They get ₹200 on signup. You can win\nup to'
                       ' ₹5000 when they take their\nfirst service.',
                   style: TextStyle(
                       fontSize: 12,
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.w400,
                       color: Color(0xFFFFFFFF)
                     //lor: Colors.white),),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Image(image: AssetImage('assets/images/referralicon.png')),
               ],
             )
             ,
             SizedBox(
               height: 10,
             ),Text(
               'REFER VIA',
               style: TextStyle(
                   fontSize: 14,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.w600,
                   color: Color(0xFFFFFFFF)
                 //lor: Colors.white),),
               ),
             ),
             SizedBox(
               height: 10,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Column(
                   children: <Widget>[
                     Image(image: AssetImage('assets/images/whatsappicon.png')),
                     SizedBox(height: 5,),
                     Text('WhatsApp',style: TextStyle(
                         fontSize: 10,
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.w600,
                         color: Color(0xFFFFFFFF)
                       //lor: Colors.white),),
                     ),),
                   ],
                 ),
                 SizedBox(
                   width: 60,
                 ),
                 Column(
                   children: <Widget>[
                     Image(image: AssetImage('assets/images/messengericon.png')),
                     SizedBox(height: 5,),
                     Text('Messenger',style: TextStyle(
                         fontSize: 10,
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.w600,
                         color: Color(0xFFFFFFFF)
                       //lor: Colors.white),),
                     ),),
                   ],
                 ),
                 SizedBox(
                   width: 60,
                 ),
                 Column(
                   children: <Widget>[
                     Image(image: AssetImage('assets/images/copylinkicon.png')),
                     SizedBox(height: 5,),
                     Text('Copy Link',style: TextStyle(
                         fontSize: 10,
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.w600,
                         color: Color(0xFFFFFFFF)
                       //lor: Colors.white),),
                     ),),
                   ],
                 )
               ],
             ),
             SizedBox(
               height: 20,
             ),
             Padding(
               padding: const EdgeInsets.only(right:180.0),
               child: Text(
                 'How it works?',
                 style: TextStyle(
                     fontSize: 16,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w600,
                     color: Color(0xFFFFFFFF)
                   //lor: Colors.white),),
                 ),
               ),
             ),
            SizedBox(
              height: 10,
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Image(image: AssetImage('assets/images/inviteicon.png')),
                 SizedBox(
                   width: 40,
                 ),
                 Text('Invite your friends to Q-Assist.',style: TextStyle(
                     fontSize: 12,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w400,
                     color: Color(0xFFFFFFFF)
                   //lor: Colors.white),),
                 ),),
               ],
             ),
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[

                 Image(image: AssetImage('assets/images/rewardicon.png')),
                 SizedBox(
                   width: 40,
                 ),
                 Text('They will receive a reward of \n₹ 500 on signup.',style: TextStyle(
                     fontSize: 12,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w400,
                     color: Color(0xFFFFFFFF)
                   //lor: Colors.white),),
                 ),),
               ],
             ),
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Image(image: AssetImage('assets/images/moneyicon.png')),
                 SizedBox(
                   width: 40,
                 ),
                 Text('You will receive a reward of\n upto ₹ 1000, once they book \na service.',style: TextStyle(
                     fontSize: 12,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w400,
                     color: Color(0xFFFFFFFF)
                   //lor: Colors.white),),
                 ),),
               ],
             ),
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 FlatButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> TermsAndConditions()));
                    },
                   child: Text('Terms & Conditions',
                     style: TextStyle(
                       fontSize: 12,
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.w400,
                       decoration: TextDecoration.underline,
                       color: Color(0xFF2196F3),
                     ),
                   ),
                 ),
                 FlatButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Faq()));
                   },
                   child: Text('FAQs',
                     style: TextStyle(
                       fontSize: 12,
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.w400,
                       decoration: TextDecoration.underline,
                       color: Color(0xFF2196F3),
                     ),
                   ),
                 ),
               ],
             ),

             SizedBox(
               height: 20,
             ),
             Text('You are yet to earn any scratch cards',style: TextStyle(
                 fontSize: 16,
                 fontFamily: 'Montserrat',
                 fontWeight: FontWeight.w600,
                 color: Color(0xFFFFFFFF)
               //lor: Colors.white),),
             ),),
             Text('Start referring to get surprises',style: TextStyle(
                 fontSize: 12,
                 fontFamily: 'Montserrat',
                 fontWeight: FontWeight.w400,
                 color: Color(0xFFFFFFFF)
               //lor: Colors.white),),
             ),),
             SizedBox(
               height: 10,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 //Image(image: AssetImage('assets/images/earnmoneyicon.png')),
                 Image.asset('assets/images/earnmoneyicon.png'


                 //  fit: BoxFit.cover,
                 ),
                SizedBox(
                  width: 20,
                ),
                 Text('Earn Min ₹ 200 on every scratch card.',style: TextStyle(
                     fontSize: 12,
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w400,
                     color: Color(0xFFFFFFFF)
                   //lor: Colors.white),),
                 ),),
               ],
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
