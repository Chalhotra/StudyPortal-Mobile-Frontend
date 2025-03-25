import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';
import 'package:studyportal/features/studymaterial/domain/repository/repository.dart';

class FetchBranches implements UseCase<List<Branch>, NoParams> {
  final Repository repository;
  const FetchBranches(this.repository);

  @override
  Future<Either<Failure, List<Branch>>> call(NoParams params) async {
    return await repository.fetchBranches();
  }
}
