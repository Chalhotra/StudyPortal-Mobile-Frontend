import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';

abstract interface class Repository {
  Future<Either<Failure, List<Branch>>> loadExplorePage({
    required List<Branch> branches,
  });
}
