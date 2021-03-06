import 'package:get/state_manager.dart';
import 'package:getx_api/model/product.dart';
import 'package:getx_api/services/remote_services.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    isLoading(true);
    var products = await RemoteServices.fetchProducts();
    if (products != null) {
      productList.value = products;
    }
    isLoading(false);
  }
}
