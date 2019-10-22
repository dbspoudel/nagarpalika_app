import 'package:flutter/material.dart';
import 'package:nagarpalika_app/model/modelmain.dart';

class SecondRow_details extends StatelessWidget {
  final List<Detail> secondary;
  const SecondRow_details({Key key , this.secondary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: secondary.length,
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
                child: Text(secondary[index].detailTitle, style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 15.0),
                child: Align(
                  alignment: Alignment.topLeft,
                      child: 
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: secondary[index].detailBodyItems.length,
                        itemBuilder: (BuildContext context, int list ) {
                     return Center(child: Text(secondary[index].detailBodyItems[list].detailBodyItemValue, textAlign: TextAlign.left ,style: TextStyle(fontSize: 20, color: Colors.black)));

                        },
                      )
                  ),
                ),
            ],
          ),
        );
      },

    );
  }
}