import 'package:bai2/controllers/popular_product_controller.dart';
import 'package:bai2/data/api/api_client.dart';
import 'package:bai2/data/repository/popular_product_repo.dart';
import 'package:bai2/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init()async {
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}