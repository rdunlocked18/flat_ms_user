import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../app/app.router.dart';
import 'admin_screen_view_model.dart';

class AdminScreenView extends StatelessWidget {
  const AdminScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AdminScreenViewModel>.reactive(
      viewModelBuilder: () => AdminScreenViewModel(),
      onModelReady: (model) {
        model.initialize();
      },
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Admin Panel'),
          ),
          body: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              ElevatedButton(
                onPressed: () {
                  model.onNavigate(Routes.onboardingScreenView);
                },
                child: Text("Onboarding Screen"),
              )
            ],
          ),
        );
      },
    );
  }
}
