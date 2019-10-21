import 'package:flutter/material.dart';

class FirstRow_details extends StatelessWidget {
  const FirstRow_details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Card(
                  elevation: 5.0,
                                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(3.0))
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0, right: 8.0),
                      child: Text('data', style: TextStyle(fontSize: 20, color: Colors.white),),
                    ),
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 15.0),
                child: Align(
                  alignment: Alignment.topLeft,
        child:Text("Mr. Mayor buda \n first line \n second line \n third line \n fourth", style: TextStyle(fontSize: 20, color: Colors.black)),
                ),
              )
            ],
          );
      },

    );
  }
}