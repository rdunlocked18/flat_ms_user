import 'package:flutter_mvvm_trial/model/product.dart';
import 'package:flutter_mvvm_trial/utils/app.locator.dart';
import 'package:stacked/stacked.dart';

import '../../services/counter_service.dart';
import '../../services/product_service.dart';

class SecondScreenViewModel extends BaseViewModel {
  final loc = locator<ProductService>();
  final locs3 = locator<CounterService>();
  int counter = 0;

  List<Person>? personList = [];
  Future<void> initialize() async {
    counter = locs3.counterValue;
    personList = loc.productList;
    notifyListeners();
    // setBusy(true);
    // personList = await loc.getProducts();
    // setBusy(false);
  }
}
