import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class Faq extends StatefulWidget {
  @override
  _FAQ createState() => _FAQ();
}

class _FAQ extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222244),
      appBar: new AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 5,
              ),
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
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartDetails()));
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()))
                },
                //debugPrint("item Selected"),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Center(
              child: Column(children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Text(
          'FAQ',
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
            //  textAlign: TextAlign.center,
            cursorColor: Color(0xFF707070),
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFFFFFFF),
                // hoverColor: Color(0xFF3D3D71),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF707070)),
                  //borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF707070)),
                  // borderRadius: BorderRadius.circular(8),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
                  //  child: Image(
                  //  image: AssetImage('assets/images/nameicon.png'),
                  child: IconButton(
                    icon: Icon(
                      Icons.search_sharp,
                      color: Color(0xFF707070),
                      size: 35,
                    ),
                    onPressed: () => {},
                    //debugPrint("item Selected"),
                  ),
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                    color: Color(0xFF9F9F9F),
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 70, vertical: 10)),
            autofocus: false,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 290,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFF3D3D71)),
            child: ExpansionTile(
              title: Text(
                '1. How will I identify the Airport Representative and Other Details.?',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: Color(0xFFFFFFFF),
              ),
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 290,
                        color: Color(0xFF222244),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 5),
                        child: Text(
                          'Our Representative will be holding a Placard with your details as mentioned during the booking',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 290,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFF3D3D71)),
            child: ExpansionTile(
              title: Text(
                '2. Would you assist us in Hotel Reservation / Car Rentals?',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: Color(0xFFFFFFFF),
              ),
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 290,
                        color: Color(0xFF222244),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 5),
                        child: Text(
                          'Our Airport Representative will guide you to the Hotel Reservation / Car Rental Counters on arrival at airport.',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 290,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFF3D3D71)),
            child: ExpansionTile(
              title: Text(
                '3. How do I cancel the booked service and are there any cancellation charges applicable?',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: Color(0xFFFFFFFF),
              ),
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 290,
                        color: Color(0xFF222244),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 5),
                        child: Text(
                          'You may cancel the reservations through our website (https://airportporterservice.com) or calling us at our\nCustomer Care  +91-95999-93821. Cancellation policy https://airportporterservice.com/term-and-conditions',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 290,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFF3D3D71)),
            child: ExpansionTile(
              title: Text(
                '4. Is the booking transferable?',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: Color(0xFFFFFFFF),
              ),
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 290,
                        color: Color(0xFF222244),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 5),
                        child: Text(
                          'The booking is not transferable.',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 290,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFF3D3D71)),
            child: ExpansionTile(
              title: Text(
                '5. Is the Airport Porter Service applicable for walk-in guests?',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: Color(0xFFFFFFFF),
              ),
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 290,
                        color: Color(0xFF222244),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 5),
                        child: Text(
                          'Currently the service is applicable on pre-booked service only and no walk-in guests are accepted.',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),

                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 290,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xFF3D3D71)),
                    child: ExpansionTile(
                      title: Text(
                        '6. How will I Identify the Airport Porter Representative for assistance at departures and arrival?',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_drop_down_circle_outlined,
                        color: Color(0xFFFFFFFF),
                      ),
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 3,
                                width: 290,
                                color: Color(0xFF222244),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 5),
                                child: Text(
                                  'The meeting point is defined in the confirmation SMS for Departure and designated baggage belt for Arrival.',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),

                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 290,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xFF3D3D71)),
                    child: ExpansionTile(
                      title: Text(
                        '7. Can Wheelchair be booked from Airport porter ?',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_drop_down_circle_outlined,
                        color: Color(0xFFFFFFFF),
                      ),
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 3,
                                width: 290,
                                color: Color(0xFF222244),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 5),
                                child: Text(
                                  'No, these services are currently unavailable with us. Request you to kindly check with airline for adding the Wheelchair',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),

                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 290,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xFF3D3D71)),
                    child: ExpansionTile(
                      title: Text(
                        '8. Does Airport Porter Service Fastrack the airline/airport processes?',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_drop_down_circle_outlined,
                        color: Color(0xFFFFFFFF),
                      ),
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 3,
                                width: 290,
                                color: Color(0xFF222244),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 5),
                                child: Text(
                                  'Airport Porter Service is to assist the passenger at the airport. We do not interfere or influence between the procedures of Airline / Airport.',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),

                SizedBox(
                  height: 20,
                )
      ]))),
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AfterLooginLandingPage()));
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WackUpCall()));
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
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Setting()));
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
