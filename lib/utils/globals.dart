import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

final routeTo = locator<NavigationService>();
final bottomSheetService = locator<BottomSheetService>();
final snackbarService = locator<SnackbarService>();
final dialogService = locator<DialogService>();
