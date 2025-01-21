import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {}

class GetBooksEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class GetNewsetBooksEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class GetSimilerBooksEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}
