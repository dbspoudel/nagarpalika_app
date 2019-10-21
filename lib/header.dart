import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromRGBO(15, 95, 180, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              child: Image.asset(
                "logo.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              width: 30.0,
            ),
            Expanded(
                child: Align(
              alignment: Alignment.center,
              child: Text(
                "सुन्दहरैचा नगरपालिका",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            )),
            SizedBox(
              width: 30.0,
            ),
            Text(
              "4:50 AM",
              style: TextStyle(fontSize: 20, color: Colors.white, fontFamily:'copperbold', fontWeight:FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
