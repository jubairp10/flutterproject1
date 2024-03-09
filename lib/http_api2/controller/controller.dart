import 'package:flutterproject1/http_api2/service/seviece.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  var mainCategories=<String>[].obs;
  var productsByCategory=<Map<String,dynamic>>[].obs;
  var isLodingCategories=true.obs;
  var isLoadingProducts=true.obs;

  @override
  void onInit() {
    _fetchMainCategories();
    super.onInit();
  }
  Future<void>_fetchMainCategories()async{
    try{
      isLodingCategories(true);
      var response=await FakestoreService().getMainCategories();
      mainCategories.assignAll(response);
    }finally{
      isLodingCategories(false);
    }
  }
  Future<void> fetchProductsByCategory(String category) async {
    try {
      isLoadingProducts(true);
      var response = await FakestoreService().getProductsByCategory(category);
      productsByCategory.assignAll(response);
    } finally {
      isLoadingProducts(false);
    }
  }
}