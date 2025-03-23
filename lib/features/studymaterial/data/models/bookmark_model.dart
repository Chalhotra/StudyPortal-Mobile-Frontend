import 'package:studyportal/features/studymaterial/domain/entities/bookmark.dart';

class BookmarkModel extends Bookmark {
  BookmarkModel({required super.branchId});

  factory BookmarkModel.fromJson(Map<String, dynamic> map) {
    return BookmarkModel(
      branchId: map["branch_id"],
    );
  }
}
