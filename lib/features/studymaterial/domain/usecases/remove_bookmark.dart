import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/entities/bookmark.dart';
import 'package:studyportal/features/studymaterial/domain/repository/repository.dart';

class RemoveBookmark implements UseCase<bool, Bookmark> {
  final Repository repository;
  const RemoveBookmark(this.repository);

  @override
  Future<Either<Failure, bool>> call(Bookmark bookmark) async {
    return await repository.removeBookmark(bookmark);
  }
}
