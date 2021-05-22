import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/FlightTrack/flightTrackStatus.dart';
import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';


class FlightTrackForm extends StatefulWidget{
  @override
 _FlightTrackForm createState()=> _FlightTrackForm();


}
class _FlightTrackForm extends State<FlightTrackForm>{
  int countFavirote= 15;


  DateTime date= DateTime.now();
  Future<Null>selectedTimePicker(BuildContext context)async{
    final DateTime picked= await showDatePicker(context: context, initialDate: date,
        firstDate: DateTime(1887), lastDate: DateTime(2050));
    if(picked == null && picked != date){
      setState(() {
        date= picked;
        print(date .toString());
      });
    }
  }

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
            ),
          ],
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

        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('FLIGHT',style: TextStyle(
                    fontSize: 28,
                    // color: Color(0xFF3D3D71),
                    color: Color(0xFFFD8A0D),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,),),
                  Image(
                    image: AssetImage('assets/images/fromicon.png'),
                  ),
                  Text('TRACKING',style: TextStyle(
                    fontSize: 28,
                    // color: Color(0xFF3D3D71),
                    color: Color(0xFFFD8A0D),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,),),
                ],
              ),


            SizedBox(
              height:45,
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
                        AssetImage('assets/images/flighticon.png')
                        ,height: 25,
                      ),
                    ),
                    hintText: 'FLIGHT NUMBER',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFffffff), )),
                autofocus: false,
              ),
            ),

            SizedBox(
              height:5,
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
                        AssetImage('assets/images/fromicon.png')
                        ,height: 25,
                      ),
                    ),
                    hintText: 'ORIGIN',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFffffff), )),
                autofocus: false,
              ),
            ),

            SizedBox(
              height:5,
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
                        AssetImage('assets/images/fromicon.png')
                        ,height: 25,
                      ),
                    ),
                    hintText: 'DESTINATION',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFffffff), )),
                autofocus: false,
              ),
            ),

            SizedBox(
              height:5,
            ),
         /*   Container(
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
                        AssetImage('assets/images/flightdateicon.png')
                        ,height: 25,
                      ),
                    ),
                    hintText: 'DATE',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFffffff), )),
                autofocus: false,
              ),
            ),
*/  Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF3d3D71)),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      selectedTimePicker(context);
                    },
                    child: Image(
                      image: AssetImage('assets/images/dateicon.png'),
                      height: 25,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'DATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),


                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              child: FlatButton(
                onPressed: () { Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => FlightStatus()),); },
                child: Text(
                  'GET STATUS',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF3D3D71),
              ),
            ),
          ],
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