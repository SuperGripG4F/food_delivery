import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageView = screenHeight / 2.64;

  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;

  static double widhth10 = screenWidth / 39;
  static double widhth20 = screenWidth / 19.5;
  //iPhone height 844 / 320 container height = 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  static double font20 = screenHeight / 42.2;
  static double font12 = screenHeight / 70.3;
}
