import 'package:flutter_mvvm_trial/screens/homeScreen/home_screen_view.dart';
import 'package:flutter_mvvm_trial/screens/secondScreen/second_screen_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/counter_service.dart';
import '../services/product_service.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@StackedApp(
  routes: [
    CustomRoute(page: HomeScreenView, initial: true),
    CustomRoute(
        page: SecondScreenView,
        transitionsBuilder: TransitionsBuilders.moveInLeft,
        durationInMilliseconds: 300)
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: CounterService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: ProductService),
  ],
)
class App {
  // nothing
}
