import 'package:clean_arch_bookly_app/core/utils/enums.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';
import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final String errMessage;
  final Books? books;
  final RequestStates requestState;

  const HomeState({
    this.errMessage = '',
    this.books,
    this.requestState = RequestStates.loadingState,
  });

  HomeState copyWith(
      {String? errMessage, Books? books, RequestStates? requestState}) {
    return HomeState(
      errMessage: errMessage ?? this.errMessage,
      books: books ?? this.books,
      requestState: requestState ?? this.requestState,
    );
  }

  @override
  List<Object?> get props => [
        errMessage,
        books,
        requestState,
      ];
}
