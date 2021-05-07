import 'package:adimera_app/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

class Connectivity extends StatefulWidget {
  @override
  _ConnectivityState createState() => _ConnectivityState();
}

class _ConnectivityState extends State<Connectivity> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xffffaf33);
    return Scaffold(body: Builder(builder: (BuildContext context) {
      return OfflineBuilder(
          connectivityBuilder: (BuildContext context,
              ConnectivityResult connectivity, Widget child) {
            final bool connected = connectivity != ConnectivityResult.none;
            return Stack(
              fit: StackFit.expand,
              children: <Widget>[
                child,
                AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    color: connected ? Colors.transparent : Colors.white,
                    child: connected
                        ? Homepage()
                        : Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2.0,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        mainColor),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text('No Internet Connection',
                                    style: TextStyle(
                                        color: mainColor, fontSize: 18)),
                              ],
                            ),
                          ))
              ],
            );
          },
          child: Container());
    })
        //
        );
  }
}
