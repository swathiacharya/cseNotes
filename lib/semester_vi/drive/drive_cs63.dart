import 'package:flutter/material.dart';
import 'package:notes/semester_vi/websiteopen_cs.dart';
import 'dart:async';
import 'package:notes/semester_vi/User.dart';
import 'package:notes/semester_vi/service/services_ssds.dart';

class UserFilterDemoSsds extends StatefulWidget {
  UserFilterDemoSsds() : super();

  final String title = "Notes";

  @override
  UserFilterDemoSsdsState createState() => UserFilterDemoSsdsState();
}

class Debouncer {
  final int milliseconds;
  VoidCallback action;
  Timer _timer;

  Debouncer({this.milliseconds});

  run(VoidCallback action) {
    if (null != _timer) {
      _timer.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}

class UserFilterDemoSsdsState extends State<UserFilterDemoSsds> {
  // https://jsonplaceholder.typicode.com/users

  final _debouncer = Debouncer(milliseconds: 500);
  List<User> users = List();
  List<User> filteredUsers = List();

  @override
  void initState() {
    super.initState();
    Services.getUsers().then((usersFromServer) {
      setState(() {
        users = usersFromServer;
        filteredUsers = users;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor:  Color(0xFFFF1744),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
//            decoration: InputDecoration(
//              contentPadding: EdgeInsets.all(15.0),
//              hintText: 'Search',
//            ),
              onChanged: (string) {
                _debouncer.run(() {
                  setState(() {
                    filteredUsers = users
                        .where((u) => (u.note
                        .toLowerCase()
                        .contains(string.toLowerCase()) ||
                        u.url.toLowerCase().contains(string.toLowerCase())))
                        .toList();
                  });
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: filteredUsers.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        ListTile(
                          title: Text(
                            filteredUsers[index].note,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>WebViewDemo( title1 :filteredUsers[index].url)));
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
//code reffered from http://www.coderzheaven.com/2019/05/29/filtering-a-listview-in-flutter-using-a-onchange-on-textfield-with-delay-in-flutter/
