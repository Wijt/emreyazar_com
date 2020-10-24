import 'dart:ui';

double getScreenW() {
  return window.physicalSize.width;
}

double getScreenH() {
  return window.physicalSize.height;
}

double getRSizeW(double width) {
  return (width * getScreenW()) / 1920;
}

double getRSizeH(double height) {
  return (height * getScreenH()) / 915;
}
