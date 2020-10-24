import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:emreyazar_com/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Language {
  String translateToText;
  String welcomeText;
  String creatorText;
  Widget paragraph;

  Language({
    this.translateToText,
    this.welcomeText,
    this.creatorText,
    this.paragraph,
  });
}

Language tr = Language(
  translateToText: "english",
  welcomeText: "hoş geldiniz.",
  creatorText: "iamfurkan tarafından yapıldı",
  paragraph: turkishParagraph(),
);

Language en = Language(
  translateToText: "türkçe",
  welcomeText: "welcome.",
  creatorText: "created by iamfurkan",
  paragraph: turkishParagraph(),
);

Widget turkishParagraph() {
  return Container(
    width: getRSizeW(650),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 20,
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Ben Emre, ",
                    maxLines: 4,
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 17,
                      height: 1.3,
                      fontFamily: 'Inconsolata',
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  FadeAnimatedTextKit(
                    text: [
                      "uçak teknisyeniyim.",
                      "yatırımcıyım.",
                      "geliştiriciyim.",
                      "radyo programcısıyım.",
                    ],
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      height: 1.3,
                      fontFamily: 'Inconsolata',
                      fontWeight: FontWeight.w600,
                    ),
                    repeatForever: true,
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart, // or Alignment.topLeft
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        AutoSizeText(
          "Çoğu insan gibi temel hobiler diyebileceğimiz: yüzme, basketbol ve kitap okuma gibi hobilere sahibim. \n\nHer zaman gelişime inanmış ve kendini geliştirmeyi başarı saymış bir insanım. Gelişimin sadece okulda olmadığı ve her yaşta bunu başarabileceğimize inanıyorum. Bu kadar fazla meslek dalında başarı sağlamamın tek nedeni",
          softWrap: true,
          style: TextStyle(
            color: Colors.white70,
            height: 1.3,
            fontFamily: 'Inconsolata',
            fontWeight: FontWeight.w500,
          ),
          minFontSize: 10,
          maxFontSize: 15,
          maxLines: 15,
          textAlign: TextAlign.left,
        ),
        Text(
          "gelişime olan inancım.",
          maxLines: 4,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            height: 1.3,
            fontFamily: 'Inconsolata',
            fontWeight: FontWeight.w800,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    ),
  );
}

Widget englishParagraph() {
  return Text("Doesn't added yet.");
}

Map<String, Language> languages = {"tr": tr, "en": en};
Language sLang = languages["tr"];
