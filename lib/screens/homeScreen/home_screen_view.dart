import 'package:flutter/material.dart';
import 'package:flutter_mvvm_trial/model/product.dart';
import 'package:flutter_mvvm_trial/screens/secondScreen/widgets/list_view_single_row.dart';
import 'package:stacked/stacked.dart';
import './home_screen_view_model.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      viewModelBuilder: () => HomeScreenViewModel(),
      onModelReady: (model) {
        model.initialize();
      },
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Hi'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text('Hello'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('hei'),
              ),
              Center(
                child: Text(model.counterValue.toString()),
              ),
              // ListViewSingleRow(
              //   product: Product(id: 1),
              // ),
              FloatingActionButton(
                onPressed: () => model.onPressed(),
                child: const Icon(Icons.chevron_right),
              )
            ],
          ),
        );
      },
    );
  }
}
