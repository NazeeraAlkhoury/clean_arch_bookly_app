import 'package:clean_arch_bookly_app/core/utils/enums.dart';
import 'package:flutter/material.dart';

class StateHandlerWidget extends StatelessWidget {
  final RequestStates state;
  final WidgetBuilder successWidget;
  final String? errMessage;
  const StateHandlerWidget(
      {super.key,
      required this.state,
      required this.successWidget,
      this.errMessage});

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case RequestStates.successState:
        return successWidget(context);
      case RequestStates.failureState:
        return Center(
          child: Text(errMessage!),
        );
      case RequestStates.loadingState:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case RequestStates.initialState:
        return Center(
          child: Text(errMessage!),
        );
    }
  }
}
