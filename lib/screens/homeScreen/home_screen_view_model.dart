import 'package:flutter_mvvm_trial/utils/app.locator.dart';
import 'package:flutter_mvvm_trial/utils/app.router.dart';
// import 'package:flutter_mvvm_trial/utils/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../services/counter_service.dart';
import '../../services/product_service.dart';

class HomeScreenViewModel extends BaseViewModel {
  var loc = locator<NavigationService>();
  var counterLoc = locator<CounterService>();
  final snackbarService = locator<BottomSheetService>();
  final productService = locator<ProductService>();

  int counterValue = 0;

  void initialize() {
    setBusy(true);
    productService.getProducts();
    setBusy(false);
  }

  void onPressed() {
    // counterValue = counterLoc.increment();

    // // snackbarService.showSnackbar(
    // //   title: 'Helloooooo',
    // //   message: 'Value is : $counterValue',
    // // );'

    //snackbarService.showConfirmationDialog(title: 'hello');
    // notifyListeners();
    // loc.navigateToSecondScreenView();
  }
}
