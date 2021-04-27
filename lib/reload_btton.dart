import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Reload extends StatelessWidget {
  const Reload(this._webViewControllerFuture);

  final Future<WebViewController> _webViewControllerFuture;

  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xff603813);
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.data;
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.replay,
                  color: mainColor,
                ),
                onPressed: !webViewReady
                    ? null
                    : () {
                        controller.reload();
                      },
              ),
            ],
          ),
        );
      },
    );
  }
}
