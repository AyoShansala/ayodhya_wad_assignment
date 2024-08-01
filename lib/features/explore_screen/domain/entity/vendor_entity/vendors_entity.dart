import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'parent_company_datum_entity.dart';

part 'vendors_entity.g.dart';

@CopyWith()
class VendorsEntity extends Equatable {
  final String status;
  final List<ParentCompanyDatumEntity> parentCompanyData;

  VendorsEntity({
    required this.status,
    required this.parentCompanyData,
  });

  @override
  List<Object?> get props => [status, parentCompanyData];
}
