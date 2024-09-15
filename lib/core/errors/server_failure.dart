import 'package:dio/dio.dart';
import 'package:headline_hunt/core/errors/failure.dart';

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          'Connection timed out. Please check your internet connection and try again.',
        );

      case DioExceptionType.sendTimeout:
        return ServerFailure(
          'Request took too long to send. Please try again later.',
        );

      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          'Server took too long to respond. Please try again later.',
        );

      case DioExceptionType.badCertificate:
        return ServerFailure(
          'There is an issue with the security certificate. Please contact support.',
        );

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          e.response as Response<Map<String, dynamic>>,
        );

      case DioExceptionType.cancel:
        return ServerFailure('Request was cancelled. Please try again.');

      case DioExceptionType.connectionError:
        return ServerFailure(
          'Unable to connect to the server. Please check your connection and try again.',
        );

      case DioExceptionType.unknown:
        return ServerFailure(
          'An unknown error occurred. Please try again or contact support.',
        );
    }
  }

  factory ServerFailure.fromResponse(Response<Map<String, dynamic>> response) {
    var statusCode = response.statusCode;
    var data = response.data;

    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(data!['msg']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later.');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later.');
    } else {
      return ServerFailure('Oops There was an Error, Please try again.');
    }
  }
}
