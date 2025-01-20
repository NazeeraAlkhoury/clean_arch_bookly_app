import 'package:clean_arch_bookly_app/core/utils/enums.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';
import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  //getBooks
  final String errMessage;
  final Books? books;
  final RequestStates requestState;
  //getNewsetBooks
  final String newsetErrMessage;
  final Books? newsetBooks;
  final RequestStates newsetRequestState;

  const HomeState({
    this.errMessage = '',
    this.books,
    this.requestState = RequestStates.loadingState,
    //getNewsetBooks
    this.newsetErrMessage = '',
    this.newsetBooks,
    this.newsetRequestState = RequestStates.loadingState,
  });

  HomeState copyWith({
    String? errMessage,
    Books? books,
    RequestStates? requestState,
    String? newsetErrMessage,
    Books? newsetBooks,
    RequestStates? newsetRequestState,
  }) {
    return HomeState(
      errMessage: errMessage ?? this.errMessage,
      books: books ?? this.books,
      requestState: requestState ?? this.requestState,
      //getNewsetBooks
      newsetErrMessage: newsetErrMessage ?? this.newsetErrMessage,
      newsetBooks: newsetBooks ?? this.newsetBooks,
      newsetRequestState: newsetRequestState ?? this.newsetRequestState,
    );
  }

  @override
  List<Object?> get props => [
        errMessage,
        books,
        requestState,
        //getNewsetBooks
        newsetErrMessage,
        newsetBooks,
        newsetRequestState,
      ];
}
