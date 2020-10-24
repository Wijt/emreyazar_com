import 'package:auto_size_text/auto_size_text.dart';
import 'package:emreyazar_com/config/constants.dart';
import 'package:emreyazar_com/models/language.dart';
import 'package:emreyazar_com/utils/utils.dart';
import 'package:emreyazar_com/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).size.width >= 910 ? bigScreen() : smallScreen(),
    );
  }

  Widget bigScreen() {
    print({getScreenW().toString(), getScreenH().toString(), getRSizeW(650)});
    return Stack(
      children: <Widget>[
        Positioned(
          child: Image.asset(Constants.logo),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getRSizeW(180),
            top: getRSizeH(90),
            right: getRSizeW(180),
            bottom: getRSizeH(80),
          ),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      hoverColor: Colors.white12,
                      child: Text(
                        sLang.translateToText,
                        style: TextStyle(fontSize: 20, color: Colors.white70, fontFamily: 'Inconsolata', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () => setState(() {
                        sLang = sLang == languages["tr"] ? languages["en"] : languages["tr"];
                      }),
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
                            sLang.welcomeText,
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
                              sLang.paragraph,
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
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: FlatButton(
            child: Text(
              sLang.creatorText,
              style: TextStyle(fontSize: 10, color: Colors.white70, fontFamily: 'Inconsolata', fontWeight: FontWeight.w700),
            ),
            hoverColor: Colors.white12,
            onPressed: () => launch("https://iamfurkan.com"),
          ),
        ),
      ],
    );
  }

  Widget smallScreen() {
    print({getScreenW().toString(), getScreenH().toString(), getRSizeW(650)});
    return SingleChildScrollView(
      child: Container(
        height: 900,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: getRSizeW(180),
                top: getRSizeH(90),
                right: getRSizeW(180),
                bottom: getRSizeH(80),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Image.asset(Constants.logo),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              hoverColor: Colors.white12,
                              child: Text(
                                sLang.translateToText,
                                style: TextStyle(fontSize: 20, color: Colors.white70, fontFamily: 'Inconsolata', fontWeight: FontWeight.w700),
                              ),
                              onPressed: () => setState(() {
                                sLang = sLang == languages["tr"] ? languages["en"] : languages["tr"];
                              }),
                            ),
                            Container(
                              height: 30,
                              width: 2,
                              decoration: BoxDecoration(gradient: Constants.colorfulLine),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: AutoSizeText(
                                      sLang.welcomeText,
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'Jura',
                                        fontWeight: FontWeight.w200,
                                        height: 1.2,
                                      ),
                                      //presetFontSizes: [85, 65, 45, 35, 25, 10],
                                      maxLines: 2,
                                      minFontSize: 60,
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 2,
                                        decoration: BoxDecoration(gradient: Constants.colorfulLine),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      sLang.paragraph,
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
                                      child: socialMediaButtons(name: "mail", iconPath: Constants.mail, link: "mailto:me@emreyazar.com"),
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
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: FlatButton(
                child: Text(
                  sLang.creatorText,
                  style: TextStyle(fontSize: 10, color: Colors.white70, fontFamily: 'Inconsolata', fontWeight: FontWeight.w700),
                ),
                hoverColor: Colors.white12,
                onPressed: () => launch("https://iamfurkan.com"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget socialMediaButtons({String name, String link, String iconPath}) {
    return IconButton(
      iconSize: 50,
      icon: Image.asset(iconPath),
      onPressed: () => launch(link),
    );
  }
}
