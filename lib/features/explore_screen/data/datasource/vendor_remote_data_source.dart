import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../util/api_endpoints.dart';
import '../model/vendors_model.dart';

abstract class VendorRemoteDataSource {
  Future<VendorsModel> getVendors();
}

class VendorRemoteDataSourceImpl implements VendorRemoteDataSource {
  final DioClient dioClient;

  const VendorRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<VendorsModel> getVendors() async {
    debugPrint("#9595 Vendors API URL: ${ApiEndpoints.vendors}");
    try {
      Response response = await dioClient.auth.get(ApiEndpoints.vendors);
      debugPrint("#9595 Vendors Response: ${response.data}");
      return vendorsModelFromJson(response.data);
    } on DioException catch (err) {
      debugPrint("#9595 error: $err");
      throw ServerException.fromDioError(err);
    } catch (e) {
      debugPrint("#9595 error: $e");
      throw ServerException(errorMessage: '$e', unexpectedError: true);
    }
  }
}
