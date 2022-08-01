import 'package:flutter/material.dart';
import 'package:flutter_mvvm_trial/screens/secondScreen/widgets/list_view_single_row.dart';
import 'package:stacked/stacked.dart';
import './second_screen_view_model.dart';

class SecondScreenView extends StatelessWidget {
  const SecondScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SecondScreenViewModel>.reactive(
      viewModelBuilder: () => SecondScreenViewModel(),
      onModelReady: (model) {
        model.initialize();
      },
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(model.counter.toString()),
          ),
          body: model.isBusy
              ? Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: model.personList?.length,
                        itemBuilder: (context, index) => ListViewSingleRow(
                          person: model.personList?[index],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListWheelScrollView.useDelegate(
                        childDelegate: ListWheelChildBuilderDelegate(
                            builder: (context, index) => ListViewSingleRow(
                                  person: model.personList?[index],
                                ),
                            childCount: model.personList?.length),
                        itemExtent: 150,
                        //offAxisFraction:,
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
