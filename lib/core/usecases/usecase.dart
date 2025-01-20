import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';

abstract interface class UseCase<SuccessType> {
  Future<Either<Failure, SuccessType>> call();
}
