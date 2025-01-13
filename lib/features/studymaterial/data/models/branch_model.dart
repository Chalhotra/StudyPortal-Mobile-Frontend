import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';

class BranchModel extends Branch {
  BranchModel({required super.name, required super.department});

  factory BranchModel.fromJson(Map<String, dynamic> map) {
    return BranchModel(
      name: map["name"],
      department: map["department"],
    );
  }
}
