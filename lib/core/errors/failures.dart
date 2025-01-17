import 'package:clean_arch_bookly_app/core/network/err_message_model.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String errorMessage;

  const Failure(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class ServerFailure extends Failure {
  const ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure('Connection timeout with the server.');
      case DioExceptionType.sendTimeout:
        return const ServerFailure('Send timeout with the server.');
      case DioExceptionType.receiveTimeout:
        return const ServerFailure('Receive timeout with the server.');
      case DioExceptionType.badCertificate:
        return const ServerFailure('Bad certificate from the server.');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response?.statusCode, dioError.response?.data);
      case DioExceptionType.cancel:
        return const ServerFailure('Request was canceled.');
      case DioExceptionType.connectionError:
        return const ServerFailure('No Internet connection.');
      case DioExceptionType.unknown:
      default:
        return const ServerFailure('An unexpected error occurred.');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == null) {
      return const ServerFailure('Received invalid status code from server.');
    }

    switch (statusCode) {
      case 400:
        return ServerFailure(
            'Bad request: ${ErrorMessageModel.fromJson(response).error.message}');
      case 401:
        return const ServerFailure('Unauthorized: Please log in.');
      case 403:
        return const ServerFailure('Forbidden: Access denied.');
      case 404:
        return const ServerFailure('Resource not found. Please check the URL.');
      case 422:
        return ServerFailure(
            ErrorMessageModel.fromJson(response).error.message);
      case 429:
        return const ServerFailure(
            'Too many requests. Please try again later.');
      case 500:
        return const ServerFailure('Internal server error. Please try later.');
      case 503:
        return const ServerFailure('Service unavailable. Try again later.');
      default:
        return ServerFailure('Unexpected error: $statusCode');
    }
  }
}
