import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import './onboarding_screen_view_model.dart';

class OnboardingScreenView extends StatelessWidget {
  const OnboardingScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingScreenViewModel>.reactive(
      viewModelBuilder: () => OnboardingScreenViewModel(),
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
