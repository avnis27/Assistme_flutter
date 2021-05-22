import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/MeetAssist/meetAssistProcess.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:flutter/material.dart';

class MeetAssist extends StatefulWidget{
  @override
  _MeetAssist createState()  => _MeetAssist();
}
class _MeetAssist extends State<MeetAssist>{
  int _value = 0;

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
      body:  SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () => //changedata(),
                  setState(() => _value = 0),
                  child: Container(
                    width: 140,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8)),
                      // color: Color(0xFFF5F5F5)
                      color: _value == 0 ? Color(0xFF3D3D71) :  Color(0xFFF5F5F5),
                    ),
                    // color: _value == 0 ? Color(0xFFF5F5F5) :  Color(0xFF3D3D71),
                    child: Center(
                      child: Text('DOMESTIC',
                        style: TextStyle( color: Color(0xFFFD8A0D),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,),),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => //changedata(),
                  setState(() => _value = 1
                  ),
                  child: Container(
                    width: 140,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8)),
                      //color: Color(0xFFF5F5F5)
                      color: _value == 1 ? Color(0xFF3D3D71) :  Color(0xFFF5F5F5),
                    ),
                    //  color: _value == 1 ? Color(0xFFF5F5F5) :  Color(0xFF3D3D71),
                    child: Center(
                      child: Text('INTERNATIONAL',
                        style: TextStyle( color: Color(0xFFFD8A0D),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,),),
                    ),
                  ),
                ),
              ],
            ),
    SizedBox(
      height: 30,
    ),

            Container(
              height: 50,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF3d3D71)),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                    image: AssetImage('assets/images/nameicon.png'),
                    height: 18,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'COUNTRY',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
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
              height: 50,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF3d3D71)),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                    image: AssetImage('assets/images/fromicon.png'),
                    height: 18,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'AIRPORT NAME',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
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
              height: 50,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF3d3D71)),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                    image: AssetImage('assets/images/selectservicesicon.png'),
                    height: 18,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'SELECT SERVICE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
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
              height: 50,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF3d3D71)),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                    image: AssetImage('assets/images/porterrequired.png'),
                    height: 18,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'AIRPORT TERMINAL',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
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
              height: 50,
              width: 285,
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
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
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
                keyboardType: TextInputType.number,
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
                        image: AssetImage('assets/images/mobile_icon.png'),
                      ),
                    ),
                    hintText: 'PHONE NUMBER ',
                    hintStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400)),
                autofocus: false,
              ),
            ),

            SizedBox(
              height: 40,
            ),
            Container(
              width: 290,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MeetAssistProcess()),);
                  },
                child: Text(
                  'PROCEED',
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