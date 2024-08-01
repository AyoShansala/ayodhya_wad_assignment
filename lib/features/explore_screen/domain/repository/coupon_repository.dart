import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../entity/coupon_entity/coupons_entity.dart';


abstract class CouponRepository {
  Future<Either<Failure, CouponsEntity>> getCoupon();
}