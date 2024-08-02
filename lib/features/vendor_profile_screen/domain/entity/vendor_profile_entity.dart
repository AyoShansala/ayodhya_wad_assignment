import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

import 'company_data_entity.dart';

part 'vendor_profile_entity.g.dart';
@CopyWith()
class VendorProfileEntity extends Equatable{
    final String status;
    final CompanyDataEntity companyData;
    final dynamic subscribedPackage;
    final List<dynamic> slashedCoupons;
    final List<dynamic> userSpecificCoupons;

    VendorProfileEntity({
      required  this.status,
       required this.companyData,
       required this.subscribedPackage,
       required this.slashedCoupons,
       required this.userSpecificCoupons,
    });

  
    
      @override
     
      List<Object?> get props => [status,companyData,subscribedPackage,slashedCoupons,userSpecificCoupons];
}