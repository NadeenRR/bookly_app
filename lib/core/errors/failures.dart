import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServes');

      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with ApiServes');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServes');
      case DioErrorType.badCertificate:
        return ServerFailure('Bad Certificate with ApiServes');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Cancel with ApiServes');
      case DioErrorType.connectionError:
        return ServerFailure('ConnectionError with ApiServes');
      case DioErrorType.unknown:
        return ServerFailure('Unknown with ApiServes');
      default:
        return ServerFailure('Oops therd was an error');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic respone) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(respone['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Method not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error,Please try later!');
    } else {
      return ServerFailure('Oops therd was an error');
    }
  }
}
