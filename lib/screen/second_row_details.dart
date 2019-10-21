import 'package:flutter/material.dart';

class SecondRow_details extends StatelessWidget {
  const SecondRow_details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
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
                child: Text('data', style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 15.0),
                child: Center(
                  child:Text(" Mr. Mayor buda", style: TextStyle(fontSize: 20, color: Colors.black))
                ),
              )
            ],
          ),
        );
      },

    );
  }
}