import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import './navigation_screen_view_model.dart';

class NavigationScreenView extends StatelessWidget {
  const NavigationScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NavigationScreenViewModel>.reactive(
      viewModelBuilder: () => NavigationScreenViewModel(),
      onModelReady: (model) {
        // model.initialize();
      },
      builder: (context, model, child) {
        return Scaffold(
            body: Column(
          children: [Container()],
        ));
      },
    );
  }
}
