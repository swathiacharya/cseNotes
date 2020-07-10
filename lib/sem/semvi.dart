import 'package:flutter/material.dart';
import 'package:notes/semester_vi/drive/drive_cs61.dart';
import 'package:notes/semester_vi/drive/drive_cs62.dart';
import 'package:notes/semester_vi/drive/drive_cs63.dart';
import 'package:notes/semester_vi/drive/drive_cs64.dart';
import 'package:notes/semester_vi/drive/drive_cs653.dart';
import 'package:notes/semester_vi/drive/drive_cs665.dart';
import 'package:notes/pagenotfount.dart';

class containlistvi extends StatefulWidget {
  const containlistvi({
    Key key,
  }) : super(key: key);

  @override
  _containlistviState createState() => _containlistviState();
}

class _containlistviState extends State<containlistvi> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        valueList('CS61'),
        valueList('CS62'),
        valueList('CS63'),
        valueList('CS64'),
        valueList('CS653'),
        valueList('CS664'),
        valueList('CSL67'),
        valueList('CSL68'),

      ],
    );


  }

  ListTile valueList(String val) {
    String page=val;
    return ListTile(
      leading: Icon(Icons.adjust),
      title: Text('$val'),
      onTap: () {

        if(page=='CS61'){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserFilterDemoCns(),
            ),
          );
        }
        else if(page=='CS62'){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserFilterDemoCg(),
            ),
          );
        }
        else if(page=='CS63'){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserFilterDemoSsds(),
            ),
          );
        }
        else if(page=='CS64'){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserFilterDemoOs(),
            ),
          );
        }
        else if(page=='CS653'){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserFilterDemoOr(),
            ),
          );
        }
        else if(page=='CS664'){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserFilterDemoPy(),
            ),
          );
        }
        else{
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PageNotFound(),
            ),
          );
        }

      },

    );
  }
}
