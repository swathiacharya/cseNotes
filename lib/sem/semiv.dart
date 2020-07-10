import 'package:flutter/material.dart';
import 'package:notes/pagenotfount.dart';

class containlistiv extends StatefulWidget {
  const containlistiv({
    Key key,
  }) : super(key: key);

  @override
  _containlistivState createState() => _containlistivState();
}

class _containlistivState extends State<containlistiv> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        valueList('CS41'),
        valueList('CS42'),
        valueList('CS43'),
        valueList('CS44'),
        valueList('CS45'),
        valueList('CS44'),
        valueList('CSL47'),
        valueList('CSL48'),

      ],
    );


  }

  ListTile valueList(String val) {
    String page=val;
    return ListTile(
      leading: Icon(Icons.adjust),
      title: Text('$val'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PageNotFound(),
            ),
          );
        }



    );
  }
}
