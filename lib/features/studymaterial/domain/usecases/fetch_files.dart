import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/entities/file.dart';
import 'package:studyportal/features/studymaterial/domain/repository/repository.dart';

class FetchFiles implements UseCase<List<File>, String> {
  final Repository repository;
  const FetchFiles(this.repository);

  @override
  Future<Either<Failure, List<File>>> call(String courseCode) async {
    return await repository.fetchFiles(courseCode);
  }
}
