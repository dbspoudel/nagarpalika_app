import 'package:flutter/material.dart';
import 'package:nagarpalika_app/header.dart';
import 'package:nagarpalika_app/model/modelmain.dart';
import 'package:tuple/tuple.dart';
import 'first_row_details.dart';
import 'second_row_details.dart';

class DetailsPage extends StatefulWidget {
  final List<Detail> dtl;
  final String title;
  DetailsPage({Key key, this.dtl, this.title}) : super(key: key);

  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  
Tuple2<List<Detail>, List<Detail>> mydata;

  @override
void initState() {
  
  mydata = filter(widget.dtl);
}

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Header(),
          Container(
            height: 60.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(15, 95, 180, 1),
            ),
            child: Row(
              children: <Widget>[
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        width: 100,
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ))),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.title,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    // child: Icon(
                    //   Icons.print,
                    //   size: 40,
                    //   color: Colors.white,
                    // ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height-60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Flexible(
                  flex: 16,
                  child: FirstRow_details(primary: mydata.item1,)
                ),
                Flexible(
                  flex: 7,
                  child: SecondRow_details(secondary: mydata.item2,),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Tuple2<List<Detail>, List<Detail>> filter(List<Detail> data) {
    List<Detail> primary =  List<Detail>(); 
    List<Detail> secondary =  List<Detail>(); 

    for (int i = 0; i < data.length; i++) {
      if (data[i].alignment == "primary") {
        primary.add(data[i]);
      
        print(data[i].alignment);
      } else {
        secondary.add(data[i]);
        print(data[i].alignment);
      }
      
    }
    return Tuple2<List<Detail>, List<Detail>>(primary,secondary);
  }
}
