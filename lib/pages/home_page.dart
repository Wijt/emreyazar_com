import 'dart:html';

import 'package:emreyazar_com/config/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).size.width >= 500 ? bigScreen() : smallScreen(),
    );
  }

  Widget bigScreen() {
    return Padding(
      padding: EdgeInsets.only(left: 120, top: 75, right: 100, bottom: 75),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 30,
                width: 30,
                color: Colors.white,
              ),
              Text(
                "resume",
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Inconsolata', fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: 150,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "welcome.",
                style: TextStyle(
                  color: Colors.white54,
                  fontFamily: 'Jura',
                  fontWeight: FontWeight.w200,
                  height: 0.9,
                  fontSize: 75,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        height: 200,
                        width: 2,
                        decoration: BoxDecoration(gradient: Constants.colorfulLine),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nPraesent at auctor purus. Praesent et neque ex. \nNunc non est dapibus, aliquam ante sed, sollicitudin velit.\nCras eu lectus turpis. ",
                            maxLines: 4,
                            style: TextStyle(color: Colors.white70, fontSize: 15, height: 1.3, fontFamily: 'Inconsolata', fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nPraesent at auctor purus. Praesent et neque ex. \nNunc non est dapibus, aliquam ante sed, sollicitudin velit.\nCras eu lectus turpis. ",
                            maxLines: 4,
                            style: TextStyle(color: Colors.white70, fontSize: 15, height: 1.3, fontFamily: 'Inconsolata', fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    height: 200,
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              color: Colors.red,
                              height: 15,
                              width: 15,
                            ),
                            Container(
                              color: Colors.red,
                              height: 15,
                              width: 15,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              color: Colors.red,
                              height: 15,
                              width: 15,
                            ),
                            Container(
                              color: Colors.red,
                              height: 15,
                              width: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget smallScreen() {
    return Text("small");
  }
}

/*Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 30,
              width: 30,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Text("resume"),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 2,
                    decoration: BoxDecoration(gradient: Constants.colorfulLine),
                  ),
                  Text("loremadfasdfasdfasdfsdpgjas şdkgja lşkdsjfşlaksdjf şlaksdjflşkasd jalskşdf"),
                ],
              ),
            ),
          ),
        ],
      ),*/
