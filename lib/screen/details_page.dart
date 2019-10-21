import 'package:flutter/material.dart';
import 'package:nagarpalika_app/header.dart';

import 'first_row_details.dart';
import 'second_row_details.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  DetailsPage({Key key, this.title}) : super(key: key);

  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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
                  onTap: () {

                  },
                  child: Container(
                    width: 100,
                    child: Icon(
                      Icons.print,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Flexible(
                  flex: 16,
                  child: Card(elevation: 4.0, child: FirstRow_details()),
                ),
                Flexible(
                  flex: 7,
                  child: SecondRow_details(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
