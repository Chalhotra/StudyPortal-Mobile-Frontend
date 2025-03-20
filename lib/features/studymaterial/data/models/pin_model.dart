import 'package:studyportal/features/studymaterial/domain/entities/pin.dart';

class PinModel extends Pin {
  PinModel({required super.userId, required super.fileId});

  factory PinModel.fromJson(Map<String, dynamic> map) {
    return PinModel(
      userId: map["user_id"],
      fileId: map["file_id"],
    );
  }
}
