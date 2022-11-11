import '../../model/product.dart';
import 'package:stacked/stacked.dart';

import '../../app/app.locator.dart';
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
  }
}
