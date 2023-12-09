import 'package:flutter/material.dart';
import 'package:postapi/screens/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
                title: const Center(
              child: Text("HomeView"),
            )),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        viewModel.postData();
                      },
                      child: const Text("Add")),
                  const SizedBox(
                    height: 17,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
