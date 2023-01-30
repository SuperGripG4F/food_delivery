import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class MainFoodPage extends StatelessWidget {
  const MainFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("current height is " + MediaQuery.of(context).size.height.toString());
    print("current width is " + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Bangladesh",
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Narshingdi",
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )

                      //Text("City"),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.widhth45,
                      height: Dimensions.height45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.size24,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //showing the body
          Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}
