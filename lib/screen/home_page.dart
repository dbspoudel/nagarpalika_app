import 'package:flutter/material.dart';
import 'package:nagarpalika_app/model/modelmain.dart';
import 'package:nagarpalika_app/screen/details_page.dart';
import 'package:nagarpalika_app/util/utils.dart';

import '../home_page_obj.dart';

class HomePage extends StatefulWidget {
  final List<MainCategories> m_cat;
  HomePage({Key key, this.m_cat}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290.0,
      child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: FutureBuilder<Npmodel>(
              future: fetchdata(),
              builder: (context, snapshot) {
             

                return  snapshot.hasData ?  GridView.builder(
                  itemCount: snapshot.data.results.length,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 3.0,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                    title: snapshot.data.results[index].title,
                                    dtl: snapshot.data.results[index].details,
                                  )),
                        );
                      },
                      child: Card(
                        elevation: 8.0,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(15, 95, 180, 1),
                                // boxShadow: [
                                //   new BoxShadow(
                                //     color: Color.fromRGBO(15, 88, 180, 1),
                                //     blurRadius: 0,
                                //   ),
                                // ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(1.0)),
                              ),
                              child: Center(
                                child: Text(
                                  snapshot.data.results[index].title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.normal),
                                ),
                              )),
                        ),
                      ),
                    );
                  },
                ) : CircularProgressIndicator();
              })),
    );
  }
}
