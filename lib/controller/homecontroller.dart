import 'package:coffee_app/model/fake_data(coffee).dart';
import 'package:coffee_app/model/model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Product> modeledData = [];
  List<Product> ModelateData() {
    modeledData = fakeData["data"]!.map((e) => Product.fromJson(e)).toList();
    return modeledData;
  }
}
