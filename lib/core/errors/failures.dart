import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;
  Failures(
    this.errMessage,
  );
}

class ServerFailures extends Failures {
  ServerFailures(String errMessage) : super(errMessage);

  factory ServerFailures.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        return ServerFailures("Request to the server was cancelled.");

      case DioExceptionType.connectionTimeout:
        return ServerFailures("Connection timeout with server.");

      case DioExceptionType.sendTimeout:
        return ServerFailures("Send timeout in connection with API server.");

      case DioExceptionType.receiveTimeout:
        return ServerFailures("Receive timeout in connection with API server.");

      case DioExceptionType.badResponse:
        return ServerFailures.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailures("No Internet Connection ");
        }
        return ServerFailures("An unexpected error occurred.");

      default:
        return ServerFailures("Oops! There was an error. Please try again.");
    }
  }

  factory ServerFailures.fromResponse(
      int statusCode, Map<dynamic, dynamic> badResponse) {
    if (statusCode == 400 || statusCode == 401) {
      return ServerFailures(badResponse['error']['message'] ??
          "Error with status code: $statusCode");
    } else if (statusCode == 404) {
      return ServerFailures("Your request was not found. Please try later!");
    } else if (statusCode == 500) {
      return ServerFailures("Internal server error. Please try later.");
    } else {
      return ServerFailures("Oops! There was an error. Please try again.");
    }
  }
}
