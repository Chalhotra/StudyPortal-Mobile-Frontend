import 'package:studyportal/features/studymaterial/domain/entities/pin.dart';

class PinModel extends Pin {
  PinModel({required super.branchId});

  factory PinModel.fromJson(Map<String, dynamic> map) {
    return PinModel(
      branchId: map["branch_id"],
    );
  }
}
