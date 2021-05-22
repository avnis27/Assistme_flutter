import 'package:assistme/MainScreen/LandingPage.dart';
import 'package:assistme/MainScreen/forgotPassEnter.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordPage createState() => _ForgotPasswordPage();
}

class _ForgotPasswordPage extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  final enterEmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:  RoundedRectangleBorder (
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Container(
        height: 220,
        child: Column(
          key: _formKey,
          children: <Widget>[

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
            Padding(
              padding: const EdgeInsets.only(right:65,top: 5),
              child: Text(
                'FORGOT PASSWORD',
              //  textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: Color(0xFF3D3D71)),
              ),
            ),

          /*  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:12.0,top: 15),
                  child: Text(
                    'FORGOT PASSWORD',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF3D3D71)),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  color: Color(0xFF3D3D71),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),*/

            SizedBox(
              height: 15,
            ),
            Container(
              width: 250,
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.text,
               controller: enterEmailController,
               obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'enter valid email-id';
                  }
                  return null;
                },
                cursorColor: Color(0xFF3D3D71),
                style: TextStyle(color: Color(0xFF3D3D71),fontSize: 18),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF8F8F8),
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, bottom: 15.0),
                      child: Image(
                        image:
                        AssetImage('assets/images/adrecticon.png')
                        ,height: 25,
                      ),
                    ),
                    hintText: ' Enter e-mail ID/Mobile ',
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3D3D71), )),
                autofocus: false,
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF3D3D71),
              ),
              child: FlatButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ForgotPassEnter();
                      });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //  Image.asset('assets/images/trackflight.png',
                    //   width: 0, height: 0),
                    Text(
                      'SUBMIT',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
   /* return Scaffold(
      backgroundColor: Color(0xFF3D3D71),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              height: 250,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                     children: <Widget>[
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text(
                             'FORGOT PASSWORD',
                             style: TextStyle(
                                 fontSize: 17.0,
                                 fontWeight: FontWeight.bold,
                                 color: Color(0xFF3D3D71)),
                           ),
                           IconButton(
                             icon: Icon(Icons.close),
                             color: Color(0xFF3D3D71),
                             onPressed: () {
                               Navigator.of(context).push(
                                 MaterialPageRoute(
                                     builder: (context) => LandingPage()),);
                             },
                           ),
                         ],
                       ),

                       SizedBox(
                         height: 15,
                       ),
                       Container(
                         width: 270,
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
                           //  onSaved: ,
                           //obscureText: hidePassword,
                           decoration: InputDecoration(
                               fillColor: Color(0xFFF8F8F8),
                               border: OutlineInputBorder(
                                 borderSide:
                                 BorderSide(color: Color(0xFFD4D4D4)),
                                 borderRadius: BorderRadius.circular(8),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderSide:
                                 BorderSide(color: Color(0xFFD4D4D4)),
                                 borderRadius: BorderRadius.circular(8),
                               ),
                               prefixIcon: Padding(
                                 padding: const EdgeInsets.only(
                                     top: 15.0, bottom: 15.0),
                                 child: Image(
                                   image:
                                   AssetImage('assets/images/adrecticon.png')
                                   ,height: 25,
                                 ),
                               ),
                               hintText: ' Enter e-mail ID/Mobile ',
                               hintStyle: TextStyle(
                                   color: Color(0xFF3D3D71), fontSize: 15)),
                           autofocus: false,
                         ),
                       ),

                       SizedBox(
                         height: 20,
                       ),
                       Container(
                         width: 270,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                           color: Color(0xFF3D3D71),
                         ),
                         child: FlatButton(
                           onPressed: () {},
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                               //  Image.asset('assets/images/trackflight.png',
                               //   width: 0, height: 0),
                               Text(
                                 'SUBMIT',
                                 style: TextStyle(
                                   fontSize: 18,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],
                    ),
                  ),
                )),
          )
        ],
      ),
    );*/
  }
}
