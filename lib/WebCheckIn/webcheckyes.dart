import 'package:assistme/BookingServices/cartDetails.dart';
import 'package:assistme/HomePage/HomeScreen.dart';
import 'package:assistme/MainScreen/AfterLoginLandingScreen.dart';
import 'package:assistme/MainScreen/LandingPage.dart';
import 'package:assistme/Setting/settingPage.dart';
import 'package:assistme/TransferServices/citytransfer.dart';
import 'package:assistme/WackUpCall/wackUpcallfrom.dart';
import 'package:assistme/WebCheckIn/webcheckin.dart';
import 'package:assistme/paymentDetails.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class WebCheckYes extends StatefulWidget {
  final String text;

  const WebCheckYes({Key key, @required this.text}) : super(key: key);

  @override
  _WebCheckYes createState() => _WebCheckYes();
}

class _WebCheckYes extends State<WebCheckYes> {

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
  bool _on = false; //swichLite
  bool isSwitched = true;

  /// switch

  GlobalKey actionKey;
  double height, width, xPosition, yPosition;
  bool isDropDownopen = false;
  OverlayEntry floatingDropdown;

  @override
  void initState() {
    actionKey = LabeledGlobalKey(widget.text);
    super.initState();
  }

  void findDropdownData() {
    RenderBox renderBox = actionKey.currentContext.findRenderObject();
    height = renderBox.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
    print(height);
    print(width);
    print(xPosition);
    print(yPosition);
  }

  OverlayEntry _createFloatingDropdown() {
    return OverlayEntry(builder: (context) {
      return Positioned(
        left: xPosition,
        width: width,
        top: yPosition + height,
        // height: 4 * height + 10,
        child: DropDown(
          itemHeight: height,
        ),
      );
    });
  }

  String itemType = "";
  var _position = [
    '  Mr',
    '  Mi',
    '  kr',
  ];
  var _positionItemSelected = '  Mr';

  int countFavirote= 15;

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
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    key: actionKey,
                    onTap: () {},
                    child: Container(
                        width: 48,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Color(0xFFD4D4D4)),
                            color: Color(0xFFF5F5F5)),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Mr',
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF3D3D71)),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFF3D3D71),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'For Me',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            activeTrackColor: Color(0xFFFFffff),
                            activeColor: Color(0xFFFD8A0D),
                            inactiveThumbColor: Color(0xffFFFFFF),
                            inactiveTrackColor: Color(0xFFD9D5D5),
                          ),
                        ],
                      ),
                      Text(
                        'Please Select the For Me option if you are booking services',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 140,
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
                          //   hoverColor: Color(0xFF3D3D71),
                          border: OutlineInputBorder(
                            // border: Border.all(color: Color(0xFFD4D4D4)),
                            //  color: Color(0xFFF5F5F5)
                            borderSide: BorderSide(color: Color(0xFF3D3D71)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF3D3D71)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          prefixIcon: Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Image(
                              image: AssetImage('assets/images/nameicon.png'),
                            ),
                          ),
                          hintText: 'First Name ',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          )),
                      autofocus: false,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 140,
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
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Image(
                              image: AssetImage('assets/images/nameicon.png'),
                            ),
                          ),
                          hintText: 'Last Name ',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          )),
                      autofocus: false,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 140,
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
                          //   hoverColor: Color(0xFF3D3D71),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF3D3D71)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF3D3D71)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          prefixIcon: Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Image(
                              image: AssetImage('assets/images/flighticon.png'),
                            ),
                          ),
                          hintText: 'PNR',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          )),
                      autofocus: false,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 140,
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
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Image(
                              image: AssetImage(
                                  'assets/images/porterrequired.png'),
                            ),
                          ),
                          hintText: 'AIRLINE ',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          )),
                      autofocus: false,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 140,
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
                          //   hoverColor: Color(0xFF3D3D71),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF3D3D71)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF3D3D71)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          prefixIcon: Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Image(
                              image: AssetImage('assets/images/fromicon.png'),
                            ),
                          ),
                          hintText: 'FROM',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          )),
                      autofocus: false,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 140,
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
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Image(
                              image: AssetImage('assets/images/fromicon.png'),
                            ),
                          ),
                          hintText: 'TO ',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          )),
                      autofocus: false,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
               /*   Container(
                    width: 140,
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
                          //   hoverColor: Color(0xFF3D3D71),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF3D3D71)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF3D3D71)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          prefixIcon: Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Image(
                              image: AssetImage('assets/images/dateicon.png'),
                            ),
                          ),
                          hintText: 'DATE',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          )),
                      autofocus: false,
                    ),
                  ),*/
                  Container(
                    width: 140,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xFF3D3D71),
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            selectedTimePicker(context);
                          },
                          child: Image(
                            image:
                            AssetImage('assets/images/maualdateicon.png'),
                            height: 25,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('DATE',style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 140,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF3D3D71)),
                    //   child: ExpansionTile(),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        dropdownColor: Color(0xFF3D3D71),
                        //  isExpanded: true,
                        hint: Image(
                          image: AssetImage('assets/images/dateicon.png'),
                        ),
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFFFD8A0D),
                        ),
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFffffff)),
                        items: _position.map((String dropDawnStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDawnStringItem,
                            child: Text(dropDawnStringItem),
                          );
                        }).toList(),
                        onChanged: (String newValueSelected) =>
                            _onDropDownPositionItemSelected(newValueSelected),
                        value: _positionItemSelected,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ExpansionTile(
                  title: Text(
                    'Contact Details (If Required)',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFffffff)),
                  ),
                  leading: Container(
                      height: 20,
                      width: 20,
                      color: Color(0xFF3d3d71),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      )),
                  trailing: Text(''),

                  //leading: Icon(Icons.add_box_outlined),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 120.0),
                      child: Text(
                        'Additional Information',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFffffff)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 140,
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
                                //   hoverColor: Color(0xFF3D3D71),
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
                                    image: AssetImage(
                                        'assets/images/nameicon.png'),
                                  ),
                                ),
                                hintText: 'NAME',
                                hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                )),
                            autofocus: false,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 140,
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
                                    image: AssetImage(
                                        'assets/images/mobile_icon.png'),
                                  ),
                                ),
                                hintText: 'MOBILE ',
                                hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                )),
                            autofocus: false,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
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
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF3D3D71)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF3D3D71)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 15.0),
                              child: Image(
                                image:
                                    AssetImage('assets/images/adrecticon.png'),
                                height: 25,
                              ),
                            ),
                            hintText: ' EMAIL ID ',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFffffff),
                            )),
                        autofocus: false,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
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
                        minLines: 6,
                        maxLines: 7,
                        autocorrect: false,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF3D3D71),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF3D3D71)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF3D3D71)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(bottom: 105.0),
                              child: Image(
                                image:
                                    AssetImage('assets/images/massageicon.png'),
                                height: 25,
                              ),
                            ),
                            hintText: ' MASSAGE',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFffffff),
                            )),
                        autofocus: false,
                      ),
                    ),
                  ],
                ),
              ),

              // ),


              SizedBox(
                height: 25,
              ),
              Container(
                width: 140,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(8)
                ),

                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    '6:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),


                  ),
                )
                ,
              ),

              SizedBox(
                height: 25,
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
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      //  color: Color(0xFF9F9F9F),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
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
                      child: Text('PROCEED',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          )),
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

  void _onDropDownPositionItemSelected(String newValueSelected) {
    setState(() {
      this._positionItemSelected = newValueSelected;
    });
  }
}
