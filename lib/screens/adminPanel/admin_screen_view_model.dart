import 'package:stacked/stacked.dart';

import '../../utils/globals.dart';

class AdminScreenViewModel extends BaseViewModel {
  void initialize() {}

  void onNavigate(String routeName) {
    routeTo.navigateTo(routeName);
  }
}
