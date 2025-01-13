import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';
import 'package:studyportal/features/studymaterial/domain/repository/repository.dart';

class LoadExplorePage implements UseCase<List<Branch>, LoadExplorePageParams> {
  final Repository repository;
  const LoadExplorePage(this.repository);

  @override
  Future<Either<Failure, List<Branch>>> call(
      LoadExplorePageParams params) async {
    return await repository.loadExplorePage(branches: params.branches);
  }
}

class LoadExplorePageParams {
  final List<Branch> branches;

  LoadExplorePageParams({required this.branches});
}
