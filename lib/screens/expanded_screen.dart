import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/service_locator.dart';
import '../view_models/expanded_viewmodel.dart';

class ExpandedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<ExpandedViewModel>(),
      child: Consumer<ExpandedViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Expanded Widget with MVVM"),
            ),
            body: Column(
              children: [
                Expanded(
                  flex: viewModel.isExpanded ? 1 : 0,
                  child: Container(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "This container expands or collapses",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: viewModel.toggleExpansion,
                  child: Text(viewModel.isExpanded ? "Collapse" : "Expand"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
