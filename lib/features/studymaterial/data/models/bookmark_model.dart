import 'package:studyportal/features/studymaterial/domain/entities/bookmark.dart';

class BookmarkModel extends Bookmark {
  BookmarkModel({required super.userId, required super.branchId});

  factory BookmarkModel.fromJson(Map<String, dynamic> map) {
    return BookmarkModel(
      userId: map["user_id"],
      branchId: map["branch_id"],
    );
  }
}
