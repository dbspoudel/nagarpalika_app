import 'package:flutter/material.dart';
import 'package:nagarpalika_app/model/modelmain.dart';

class FirstRow_details extends StatelessWidget {
  final List<Detail> primary;
  const FirstRow_details({Key key , this.primary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      itemCount: primary.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 5.0,
                  child: Column(
            children: <Widget>[
              Container(
                height: 30,
                decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(primary[index].detailTitle, style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 15.0),
                child: Align(
                  alignment: Alignment.topLeft,
                      child: 
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: primary[index].detailBodyItems.length,
                        itemBuilder: (BuildContext context, int list ) {
                     return Text(primary[index].detailBodyItems[list].detailBodyItemValue, textAlign: TextAlign.left ,style: TextStyle(fontSize: 20, color: Colors.black));

                        },
                      )
                  ),
                ),
              
            ],
          ),
        );
        // return Column(
        //     children: <Widget>[
        //       Padding(
        //         padding: const EdgeInsets.all(3.0),
        //         child: Card(
        //           elevation: 5.0,
        //                           child: Container(
        //             height: 30,
        //             decoration: BoxDecoration(
        //             color: Colors.red,
        //             borderRadius: BorderRadius.all(Radius.circular(3.0))
        //           ),
        //           child: Align(
        //             alignment: Alignment.centerLeft,
        //             child: Padding(
        //               padding: const EdgeInsets.only(left:8.0, right: 8.0),
        //               child: Text(primary[index].detailTitle, style: TextStyle(fontSize: 20, color: Colors.white),),
        //             ),
        //           ),
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 0.0),
        //         child: Align(
        //           alignment: Alignment.topLeft,
        // child:Text("Mr. Mayor buda \n first line \n second line \n third line \n fourth", style: TextStyle(fontSize: 20, color: Colors.black)),
        //         ),
        //       )
        //     ],
        //   );
      },

    );
  }
}