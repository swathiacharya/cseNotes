import 'package:flutter/material.dart';
import 'package:notes/sempopupmenu.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override


  Expanded sembtn(String sem){
    String semname=sem;
    return Expanded(
      child: RaisedButton(
        color: Colors.white,
        onPressed: ()=>onbuttonsem(semname), //onpress it go to onbuttonsem method
        child: Text('SEMESTER $sem',
          style: TextStyle(
            color: Color(0xFFFF1744),
            fontSize: 20.0,
            fontFamily:'pacifico',

          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Color(0xFFFF1744))
        ),
      ),



    );
  }

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:Center(child: const Text('NOTES')),
        backgroundColor:  Color(0xFFFF1744),


      ),
      body: SafeArea(
        child: Center(
          //padding:EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0,left: 60.0,right: 60.0,bottom: 5.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                sembtn('III'),
                SizedBox(height: 10.0,),
                sembtn('IV'),
                SizedBox(height: 10.0,),
                sembtn('V'),
                SizedBox(height: 10.0,),
                sembtn('VI'),
                SizedBox(height: 10.0,),
                sembtn('VII'),
                SizedBox(height: 10.0,),
                sembtn('VIII'),
                SizedBox(height: 10.0,),


              ],
            ),
          ),
        ),
      ),
    );
  }

  void onbuttonsem(String sem){
    String semname=sem;
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              color: Color(0xFF737373),
              height:320,
              child: Container(
                    //child: _buildButtonNavigation(semname),
                child: BuildButtonNavigation (name:semname),
                    decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(15),
                      topRight: const Radius.circular(15),
                    )
                ),


              ));
        });
  }


}



/*_buildButtonNavigation
* isthe  ppopup screen having all list of particular sem
* onclicking the list of popup screen it will open next activity
*
* */

//
//class _buildButtonNavigation extends StatelessWidget {
//
//
//  const _buildButtonNavigation({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//
//    return containlist();
//  }
//}
//
//
//class containlist extends StatefulWidget {
//  const containlist({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  _containlistState createState() => _containlistState();
//}
//
//class _containlistState extends State<containlist> {
//  @override
//  Widget build(BuildContext context) {
//    return ListView(
//      children: <Widget>[
//        valueList('CS61'),
//        valueList('CS62'),
//        valueList('CS63'),
//        valueList('CS64'),
//        valueList('CS653'),
//        valueList('CS664'),
//        valueList('CSL67'),
//        valueList('CSL68'),
//
//      ],
//    );
//
//
//  }
//
//  ListTile valueList(String val) {
//    String page=val;
//    return ListTile(
//      leading: Icon(Icons.adjust),
//      title: Text('$val'),
//      onTap: () {
//
//        if(page=='CS62'){
//          Navigator.push(
//            context,
//            MaterialPageRoute(
//              builder: (context) => UserFilterDemoCg(),
//            ),
//          );
//        }
//        else{
//          Navigator.push(
//            context,
//            MaterialPageRoute(
//              builder: (context) => UserFilterDemo(),
//            ),
//          );
//        }
//
//      },
//
//    );
//  }
//}
