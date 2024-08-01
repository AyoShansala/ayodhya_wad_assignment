import 'package:dio/dio.dart';
import '../../util/api_endpoints.dart';

class DioClient {
  Dio public;
  Dio auth;

  DioClient({required this.public, required this.auth}) {
    public.options = BaseOptions(
      baseUrl: ApiEndpoints.baseURL,
      connectTimeout: Duration(milliseconds: 15000),
      receiveTimeout: Duration(milliseconds: 15000),
      responseType: ResponseType.plain,
    );
    auth.options = BaseOptions(
      baseUrl: ApiEndpoints.baseURL,
      connectTimeout: Duration(milliseconds: 15000),
      receiveTimeout: Duration(milliseconds: 15000),
      responseType: ResponseType.plain,
    );
  }
}
