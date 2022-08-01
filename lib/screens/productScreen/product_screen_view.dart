import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import './product_screen_view_model.dart';

class ProductScreenView extends StatelessWidget {
  const ProductScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductScreenViewModel>.reactive(
      viewModelBuilder: () => ProductScreenViewModel(),
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
