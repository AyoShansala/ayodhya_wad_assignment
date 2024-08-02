import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../util/api_endpoints.dart';
import '../model/vendor_profile_model.dart';

abstract class VendorProfileRemoteDataSource {
  Future<VendorProfileModel> getCoupons();
}

class VendorProfileRemoteDataSourceImpl implements VendorProfileRemoteDataSource {
  final DioClient dioClient;
  VendorProfileRemoteDataSourceImpl({
    required this.dioClient,
  });
  @override
  Future<VendorProfileModel> getCoupons() async {
    debugPrint('#32344 Api Vendor profile: ${ApiEndpoints.vendorProfile}');
    try {
      Response response = await dioClient.public.get(ApiEndpoints.vendorProfile);
      debugPrint('#32344 response Vendor data: ${response.data}');
      return vendorProfileModelFromJson(response.data);
    } on DioException catch (err) {
      debugPrint('#32344err: $err');
      throw ServerException.fromDioError(err);
    } catch (e) {
      debugPrint('#32344 e: $e');
      throw ServerException(errorMessage: '$e', unexpectedError: true);
    }
  }
}
