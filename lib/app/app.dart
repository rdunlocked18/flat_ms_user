import '../screens/adminPanel/admin_screen_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../screens/authenticationScreen/authentication_screen_view.dart';
import '../screens/navigationScreen/navigation_screen_view.dart';
import '../screens/onboardingScreen/onboarding_screen_view.dart';
import '../services/counter_service.dart';
import '../services/product_service.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@StackedApp(
  routes: [
    CustomRoute(page: AdminScreenView, initial: true),
    CustomRoute(page: OnboardingScreenView),
    CustomRoute(page: AuthenticationScreenView),
    CustomRoute(page: NavigationScreenView),
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
