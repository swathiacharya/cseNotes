import 'package:flutter/material.dart';
import 'package:notes/sem/semiii.dart';
import 'package:notes/sem/semiv.dart';
import 'package:notes/sem/semv.dart';
import 'package:notes/sem/semvi.dart';
import 'package:notes/sem/semvii.dart';
import 'package:notes/sem/semviii.dart';


class BuildButtonNavigation extends StatelessWidget {
  final  String name;

  const BuildButtonNavigation({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    if (name=='III')
      {
        return containlistiii();
      }
      else if(name=='IV'){
        return containlistiv();
    }
    else if(name=='V'){
      return containlistv();
    }
    else if(name=='VI'){
      return containlistvi();
    }
    else if(name=='VII'){
      return containlistvii();
    }
    else{
      return containlistviii();

    }
  }

}




