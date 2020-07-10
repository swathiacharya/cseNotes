import 'package:flutter/material.dart';
import 'package:notes/pagenotfount.dart';
class containlistviii extends StatefulWidget {
  const containlistviii({
    Key key,
  }) : super(key: key);

  @override
  _containlistviiiState createState() => _containlistviiiState();
}

class _containlistviiiState extends State<containlistviii> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        valueList('CS81'),
        valueList('CS82'),
        valueList('CS83'),
        valueList('CS84'),
        valueList('CS85'),

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
