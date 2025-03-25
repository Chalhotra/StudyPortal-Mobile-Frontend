import 'package:studyportal/features/studymaterial/domain/entities/bookmark.dart';

class BookmarkModel extends Bookmark {
  BookmarkModel({required super.fileId});

  factory BookmarkModel.fromJson(Map<String, dynamic> map) {
    return BookmarkModel(
      fileId: map["file_id"],
    );
  }
}
