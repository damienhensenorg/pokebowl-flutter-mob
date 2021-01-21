import 'package:flutter/material.dart';
import 'package:pokebowl/pokebowl_icons.dart';

import 'login.dart';

class OrderConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff2E6E25),
          title: Text(
            "Poké Bowl",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31.0),
          ),
          centerTitle: true,
          leading: FlatButton(
            child: Icon(
              Pokebowl.arrow_left,
              size: 25,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.transparent,
          )),
      body: Stack(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
                child: FittedBox(
                  child:
                      Image(image: AssetImage('assets/images/cart-image.png')),
                  fit: BoxFit.contain,
                ),
              ),
              height: MediaQuery.of(context).size.height / 2 - 56,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
                child: Padding(
              padding: EdgeInsets.only(bottom: 50.0),
              child: Text(
                'Your order has been placed!\nYou will recieve an E-mail Very Soon!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff4E4E4E),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            )),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Padding(
                      // padding: EdgeInsets.all(10.0),
                      padding: EdgeInsets.fromLTRB(12.0, 15.0, 12.0, 15.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Text('Order continue',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19.0))),
                        ],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        side: BorderSide(color: Color(0xff707070))),
                    color: Color(0xffC30202),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            color: Color(0xff2E6E25),
            width: MediaQuery.of(context).size.width,
            height: 50,
          ),
        ),
        Positioned(
            bottom: 15,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Image(image: AssetImage('assets/images/logo-big.png')),
            )),
      ]),
    );
  }
}
