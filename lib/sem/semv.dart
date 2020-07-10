import 'package:flutter/material.dart';
import 'package:notes/pagenotfount.dart';

class containlistv extends StatefulWidget {
  const containlistv({
    Key key,
  }) : super(key: key);

  @override
  _containlistvState createState() => _containlistvState();
}

class _containlistvState extends State<containlistv> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        valueList('CS51'),
        valueList('CS52'),
        valueList('CS53'),
        valueList('CS54'),
        valueList('CS553'),
        valueList('CS564'),
        valueList('CSL57'),
        valueList('CSL58'),

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
