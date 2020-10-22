import 'dart:html';

import 'package:emreyazar_com/config/constants.dart';
import 'package:emreyazar_com/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).size.width >= 500 ? bigScreen() : smallScreen("Furkan"),
    );
  }

  Widget bigScreen() {
    return Padding(
      padding: EdgeInsets.only(left: 180, top: 90, right: 180, bottom: 80),
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(Constants.logo),
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    hoverColor: Colors.white12,
                    child: Text(
                      "english",
                      style: TextStyle(fontSize: 20, color: Colors.white70, fontFamily: 'Inconsolata', fontWeight: FontWeight.w700),
                    ),
                    onPressed: () => {},
                  ),
                  Container(
                    height: 30,
                    width: 2,
                    decoration: BoxDecoration(gradient: Constants.colorfulLine),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "hoş geldiniz.",
                          style: TextStyle(
                            color: Colors.white54,
                            fontFamily: 'Jura',
                            fontWeight: FontWeight.w200,
                            height: 1.2,
                            fontSize: 85,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Ben Emre, ",
                                          maxLines: 4,
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 15,
                                            height: 1.3,
                                            fontFamily: 'Inconsolata',
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          "Be",
                                          style: TextStyle(fontSize: 43.0),
                                        ),
                                        SizedBox(width: 20.0, height: 100.0),
                                        ScaleAnimatedTextKit(
                                          onTap: () {
                                            print("Tap Event");
                                          },
                                          text: ["Think", "Build", "Ship"],
                                          textStyle: TextStyle(fontSize: 70.0, fontFamily: "Inconsolata"),
                                          textAlign: TextAlign.start,
                                          alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                                          ,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Her zaman gelişime inanmış ve kendini\ngeliştirmeyi başarı saymış bir insanım.",
                                      maxLines: 4,
                                      style:
                                          TextStyle(color: Colors.white70, fontSize: 15, height: 1.3, fontFamily: 'Inconsolata', fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: socialMediaButtons(name: "instagram", iconPath: Constants.instagram, link: "https://www.instagram.com/razayerme/"),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: socialMediaButtons(name: "twitter", iconPath: Constants.twitter, link: "https://twitter.com/razayerme/"),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: socialMediaButtons(name: "linkedin", iconPath: Constants.linkedin, link: "https://www.linkedin.com/in/razayerme/"),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: socialMediaButtons(name: "mail", iconPath: Constants.mail, link: "me@emreyazar.com"),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: FlatButton(
              child: Text(
                "created by iamfurkan",
                style: TextStyle(fontSize: 10, color: Colors.white70, fontFamily: 'Inconsolata', fontWeight: FontWeight.w700),
              ),
              onPressed: () => html.window.open("https://iamfurkan.com", 'iamfurkan'),
            ),
          ),
        ],
      ),
    );
  }

  Widget smallScreen(String test) {
    return Text(test);
  }

  Widget socialMediaButtons({String name, String link, String iconPath}) {
    return IconButton(
      iconSize: 50,
      icon: Image.asset(iconPath),
      onPressed: () => html.window.open(link, 'emreyazar'),
    );
  }
}
