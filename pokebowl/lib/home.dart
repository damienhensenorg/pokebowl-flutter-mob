import 'package:flutter/material.dart';
import 'package:pokebowl/pokebowl_icons.dart';

import 'order_confirmation.dart';

class Home extends StatelessWidget {
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
                Pokebowl.hamburger,
                size: 27,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.transparent,
            )),
        body: Stack(
          children: <Widget>[
            Column(
              children: [
                Container(
                  child: FittedBox(
                    child:
                        Image(image: AssetImage('assets/images/homepage.png')),
                    fit: BoxFit.cover,
                  ),
                  height: MediaQuery.of(context).size.height / 2 - 56,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2 - 56,
                  width: MediaQuery.of(context).size.width / 1.6,
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
                                  child: Text('Order food now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19.0))),
                              Icon(
                                Pokebowl.arrow_right,
                                color: Color(0xffFFFFFF),
                              )
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
                                  builder: (context) => OrderConfirmation()));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2 - (56 * 3.1),
                  right: 50.0,
                  left: 50.0),
              child: new Container(
                child: Image(image: AssetImage('assets/images/logo-big.png')),
              ),
            ),
          ],
        ));
  }
}
