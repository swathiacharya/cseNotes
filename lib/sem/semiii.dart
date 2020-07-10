import 'package:flutter/material.dart';


class containlistiii extends StatefulWidget {
  const containlistiii({
    Key key,
  }) : super(key: key);

  @override
  _containlistiiiState createState() => _containlistiiiState();
}

class _containlistiiiState extends State<containlistiii> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        valueList('CS31'),
        valueList('CS32'),
        valueList('CS33'),
        valueList('CS34'),
        valueList('CS35'),
        valueList('CS36'),
        valueList('CSL37'),
        valueList('CSL38'),

      ],
    );


  }

  ListTile valueList(String val) {
    String page=val;
    return ListTile(
      leading: Icon(Icons.adjust),
      title: Text('$val'),
      onTap: null,


    );
  }
}
