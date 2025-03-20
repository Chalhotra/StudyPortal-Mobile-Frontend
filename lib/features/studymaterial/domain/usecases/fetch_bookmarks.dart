import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/entities/file.dart';
import 'package:studyportal/features/studymaterial/domain/repository/repository.dart';

class FetchBookmarks implements UseCase<List<File>, NoParams> {
  final Repository repository;
  const FetchBookmarks(this.repository);

  @override
  Future<Either<Failure, List<File>>> call(NoParams params) async {
    return await repository.fetchBookmarks();
  }
}
