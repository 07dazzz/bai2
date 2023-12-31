import 'package:bai2/controllers/cart_controller.dart';
import 'package:bai2/controllers/popular_product_controller.dart';
import 'package:bai2/controllers/recommended_product_controller.dart';
import 'package:bai2/data/api/api_client.dart';
import 'package:bai2/data/repository/cart_repo.dart';
import 'package:bai2/data/repository/popular_product_repo.dart';
import 'package:bai2/utils/app_constants.dart';
import 'package:get/get.dart';

import '../data/repository/recommended_product_repo.dart';

Future<void> init()async {
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(()=> CartRepo());

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}