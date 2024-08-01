import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/errors/exceptions.dart';
import '../../../../../core/network/dio_client.dart';
import '../../../../../util/api_endpoints.dart';
import '../model/coupon_model.dart';

abstract class CouponRemoteDatasource {
  Future<CouponsModel> getCoupons();
}

class CouponRemoteDataSourceImpl implements CouponRemoteDatasource {
  final DioClient dioClient;

  const CouponRemoteDataSourceImpl({
    required this.dioClient,
  });

  @override
  Future<CouponsModel> getCoupons() async {
    debugPrint('#32423 Api coupon: ${ApiEndpoints.coupon}');
    try {
      Response response = await dioClient.public.get(ApiEndpoints.coupon);
      debugPrint('#32423 response coupons data: ${response.data}');
      return couponsModelFromJson(response.data);
    } on DioException catch (err) {
      debugPrint('#32423 err: $err');
      throw ServerException.fromDioError(err);
    } catch (e) {
      debugPrint('#32423 e: $e');
      throw ServerException(errorMessage: '$e', unexpectedError: true);
    }
  }
}
