import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var fiContainer = 0;
  var secondContainer = 0;
  var thirdContainer = 0;
  var fourthContainer = 0;
  var fifthContainer = 0;
  var changedContainer = 0;
  var colorOfChangedContainer = Colors.grey;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   /* firstContainer = 0;
    secondContainer = 0;
    thirdContainer = 0;
    fourthContainer = 0;
    fifthContainer = 0;*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test")),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 600,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          colorOfChangedContainer = Colors.red;
                          changedContainer = fiContainer;
                        });
                      },
                      child: Container(
                        width: 140,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        color: Colors.red,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              fiContainer.toString(),
                              style: new TextStyle(
                                fontSize: 50,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          colorOfChangedContainer = Colors.blue;
                          changedContainer = secondContainer;
                        });
                      },
                      child: Container(
                        width: 140,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        color: Colors.blue,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              secondContainer.toString(),
                              style: new TextStyle(
                                fontSize: 50,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          colorOfChangedContainer = Colors.green;
                          changedContainer = thirdContainer;
                        });
                      },
                      child: Container(
                        width: 140,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        color: Colors.green,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              thirdContainer.toString(),
                              style: new TextStyle(
                                fontSize: 50,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          colorOfChangedContainer = Colors.orange;
                          changedContainer = fourthContainer;
                        });
                      },
                      child: Container(
                        width: 140,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        color: Colors.orange,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              fourthContainer.toString(),
                              style: new TextStyle(
                                fontSize: 50,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          colorOfChangedContainer = Colors.yellow;
                          changedContainer = fifthContainer;
                        });
                      },
                      child: Container(
                        width: 140,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        color: Colors.yellow,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              fifthContainer.toString(),
                              style: new TextStyle(
                                fontSize: 50,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 2, child: Container()),
              Expanded(flex: 3, child: theChangedContainer()),
              Expanded(flex: 2, child: Container())
            ],
          )),
    );
  }

  Widget theChangedContainer() {
    return GestureDetector(
      onTap: () {
        setState(() {
          if(colorOfChangedContainer == Colors.red){
            changedContainer++;
            fiContainer = changedContainer;
          } else if(colorOfChangedContainer == Colors.blue){
            changedContainer++;
            secondContainer = changedContainer;
          } else if(colorOfChangedContainer == Colors.green) {
            changedContainer++;
            thirdContainer = changedContainer;
          }  else if(colorOfChangedContainer == Colors.orange) {
            changedContainer++;
            fourthContainer = changedContainer;
          }  else if(colorOfChangedContainer == Colors.yellow) {
            changedContainer++;
            fifthContainer = changedContainer;
          }
        });
      },
      child: Container(
        width: 140,
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        color: colorOfChangedContainer,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              changedContainer.toString(),
              style: new TextStyle(
                fontSize: 50,
                fontFamily: 'Roboto',
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
