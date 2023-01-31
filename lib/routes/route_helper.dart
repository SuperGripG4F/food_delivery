import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detail.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommendedFood";

  static String getInitial() => '$initial';
  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getRecommendedFood() => '$recommendedFood';

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return MainFoodPage();
        },
        transition: Transition.leftToRight),

    //GetPage(name: popularFood, page: () => PopularFoodDetail()),
    GetPage(
        name: recommendedFood,
        page: () {
          return RecommendedFoodDetail();
        },
        transition: Transition.rightToLeft),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          print("pageId " + pageId! + " clicked");
          return PopularFoodDetail(pageId: int.parse(pageId));
        },
        transition: Transition.rightToLeft),
  ];
}
