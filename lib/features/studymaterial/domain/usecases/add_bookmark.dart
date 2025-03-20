import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/entities/bookmark.dart';
import 'package:studyportal/features/studymaterial/domain/repository/repository.dart';

class AddBookmark implements UseCase<Bookmark, Bookmark> {
  final Repository repository;
  const AddBookmark(this.repository);

  @override
  Future<Either<Failure, Bookmark>> call(Bookmark bookmark) async {
    return await repository.addBookmark(bookmark);
  }
}
