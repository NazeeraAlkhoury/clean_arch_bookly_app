import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:clean_arch_bookly_app/core/usecases/base_usecase.dart';
import 'package:clean_arch_bookly_app/core/utils/enums.dart';
import 'package:clean_arch_bookly_app/features/home/domain/usecases/get_books_usecase.dart';
import 'package:clean_arch_bookly_app/features/home/domain/usecases/get_newset_books_usecase.dart';
import 'package:clean_arch_bookly_app/features/home/domain/usecases/get_similar_usecase.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_event.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetBooksUseCase getBooksUseCase;
  final GetNewsetBooksUseCase getNewsetBooksUseCase;
  final GetSimilarUsecase getSimilarUsecase;
  HomeBloc({
    required this.getBooksUseCase,
    required this.getNewsetBooksUseCase,
    required this.getSimilarUsecase,
  }) : super(const HomeState()) {
    on<GetBooksEvent>(_getBooks);
    on<GetNewsetBooksEvent>(
      _getNewsetBooks,
    );
    on<GetSimilerBooksEvent>(
      (event, emit) async {
        final result = await getSimilarUsecase(const NoParameters());
        result.fold(
          (failure) => emit(
            state.copyWith(
              similerErrMessage: failure.errorMessage,
              similerRequestState: RequestStates.failureState,
            ),
          ),
          (books) => emit(
            state.copyWith(
              similerBooks: books,
              similerRequestState: RequestStates.successState,
            ),
          ),
        );
      },
    );
  }

  FutureOr<void> _getNewsetBooks(event, emit) async {
    final result = await getNewsetBooksUseCase(const NoParameters());
    result.fold(
      (failure) => emit(
        state.copyWith(
          newsetErrMessage: failure.errorMessage,
          newsetRequestState: RequestStates.failureState,
        ),
      ),
      (books) => emit(
        state.copyWith(
          newsetBooks: books,
          newsetRequestState: RequestStates.successState,
        ),
      ),
    );
  }

  FutureOr<void> _getBooks(GetBooksEvent event, Emitter<HomeState> emit) async {
    final result = await getBooksUseCase(const NoParameters());

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            requestState: RequestStates.failureState,
            errMessage: failure.errorMessage,
          ),
        );
      },
      (books) {
        emit(
          state.copyWith(
            requestState: RequestStates.successState,
            books: books,
          ),
        );
      },
    );
  }
}
