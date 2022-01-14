import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:wehsas/NoConnection.dart';

// import 'package:lareen_app/SplashScreen.dart';

class Web_View extends StatefulWidget {
  const Web_View({Key? key}) : super(key: key);

  @override
  _Web_ViewState createState() => _Web_ViewState();
}

class _Web_ViewState extends State<Web_View> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    // if (Platform.isAndroid) Web_View.platform = SurfaceAndroidWeb_View();
  }

  var url = "https://wehsas.com/";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // NavBar is not preferable on webView
        // appBar: AppBar(
        //   actions: <Widget>[
        //      IconButton(
        //       icon: const Icon(Icons.close),
        //       onPressed: () => Navigator.of(context).pop(null),
        //     ),
        //   ],
        //   leading:  Container(),
        //   backgroundColor: Colors.white.withOpacity(0),
        //   shadowColor: Colors.white.withOpacity(0.1),
        //   iconTheme: const IconThemeData(
        //     color: Colors.white,
        //     opacity: 0.9,
        //   ),
        // ),

        body: Center(
          child: WebView(
            onWebResourceError: (WebResourceError webViewError) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const NoConnexion()));
              Fluttertoast.showToast(
                  msg: webViewError.description.toString(),
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 4,
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                  fontSize: 16.0);
            },
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: url,
            onPageFinished: (String url) {
              Fluttertoast.showToast(
                  msg: '--- page finished ✔ ---\n',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 4,
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                  fontSize: 16.0);
            },
          ),
        ),
      ),
    );
  }
}
