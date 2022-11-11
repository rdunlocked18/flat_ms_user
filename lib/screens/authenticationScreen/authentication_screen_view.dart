import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import './authentication_screen_view_model.dart';

class AuthenticationScreenView extends StatelessWidget {
  const AuthenticationScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthenticationScreenViewModel>.reactive(
      viewModelBuilder: () => AuthenticationScreenViewModel(),
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
