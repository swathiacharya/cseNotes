import 'package:flutter/material.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';


/* WebViewDemo open the webpage inthe flutter app itself
*here the link is passed from the activitycs61
*
* */

class WebViewDemo extends StatefulWidget {
  WebViewDemo({Key key, this.title1}) : super(key: key);
  final String title1;


  @override
  _WebViewDemoState createState() => _WebViewDemoState();
}

class _WebViewDemoState extends State<WebViewDemo> {





  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar:new AppBar(
        title:const Text('NOTES'),
        backgroundColor:  Color(0xFFFF1744),
      ),
      body:Builder(
        builder: (BuildContext context){
          return WebView(
            initialUrl: widget.title1,
            javascriptMode: JavascriptMode.unrestricted,
          );
        },


      ),

    ) ;
  }
}
