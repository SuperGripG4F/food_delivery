import 'package:food_delivery/data/model/products_model.dart';
import 'package:get/get.dart';
import '../repository/popular_product_repo.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    //put a await untill we get the data
    //json response
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("got product");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      print(_popularProductList);
      //= setstate
      update();
    } else {
      //failed return
    }
  }
}
