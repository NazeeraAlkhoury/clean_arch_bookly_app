import 'package:clean_arch_bookly_app/core/services/service_locator.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_bloc.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_event.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_state.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/similer_books_list.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/state_handler_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureSimilerBook extends StatelessWidget {
  const FeatureSimilerBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: BlocProvider.value(
        value: getIt<HomeBloc>()..add(GetSimilerBooksEvent()),
        child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          return StateHandlerWidget(
              state: state.similerRequestState,
              successWidget: (context) => SimilerBooksList(
                    books: state.similerBooks!,
                  ),
              errMessage: state.newsetErrMessage);
        }),
      ),
    );
  }
}
