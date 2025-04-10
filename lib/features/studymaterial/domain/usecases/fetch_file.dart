import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/repository/repository.dart';

class FetchFile implements UseCase<String, String> {
  final Repository repository;
  const FetchFile(this.repository);

  @override
  Future<Either<Failure, String>> call(String fileId) async {
    return await repository.fetchFile(fileId);
  }
}
