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
    return Scaffold(body: Builder(builder: (BuildContext context) {
      return OfflineBuilder(
          connectivityBuilder: (BuildContext context,
              ConnectivityResult connectivity, Widget child) {
            final bool connected = connectivity != ConnectivityResult.none;
            return Stack(
              fit: StackFit.expand,
              children: <Widget>[
                child,
                Positioned(
                    left: 0.0,
                    right: 0.0,
                    height: 30.0,
                    bottom: 2,
                    child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        color: connected
                            ? Colors.transparent
                            : Colors.amberAccent.withOpacity(0.5),
                        child: connected
                            ? Center(child: Text(''))
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('No internet Connection'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 12,
                                    height: 12,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.0,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.white),
                                    ),
                                  )
                                ],
                              )))
              ],
            );
          },
          child: Homepage());
    })
        //
        );
  }
}
