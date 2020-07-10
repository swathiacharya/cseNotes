import 'package:flutter/material.dart';
import 'package:notes/pagenotfount.dart';
class containlistvii extends StatefulWidget {
  const containlistvii({
    Key key,
  }) : super(key: key);

  @override
  _containlistviiState createState() => _containlistviiState();
}

class _containlistviiState extends State<containlistvii> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        valueList('CS71'),
        valueList('CS72'),
        valueList('CS73'),
        valueList('CS74'),
        valueList('CS753'),
        valueList('CS764'),
        valueList('CSL77'),
        valueList('CSL78'),

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
