import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';
import 'package:studyportal/features/studymaterial/domain/repository/repository.dart';

class FetchPins implements UseCase<List<Branch>> {
  final Repository repository;
  const FetchPins(this.repository);

  @override
  Future<Either<Failure, List<Branch>>> call() async {
    return await repository.fetchPins();
  }
}
