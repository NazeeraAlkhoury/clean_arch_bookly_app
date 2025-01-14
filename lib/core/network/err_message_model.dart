import 'package:equatable/equatable.dart';

class ErrorMessageDataModel extends Equatable {
  final int code;
  final String message;

  const ErrorMessageDataModel({required this.code, required this.message});

  factory ErrorMessageDataModel.fromJson(Map<String, dynamic> json) =>
      ErrorMessageDataModel(
        code: json['code'],
        message: json['message'],
      );

  @override
  List<Object?> get props => [
        code,
        message,
      ];
}

class ErrorMessageModel extends Equatable {
  final ErrorMessageDataModel error;

  const ErrorMessageModel(this.error);
  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) =>
      ErrorMessageModel(ErrorMessageDataModel.fromJson(json['error']));

  @override
  List<Object?> get props => [error];
}
