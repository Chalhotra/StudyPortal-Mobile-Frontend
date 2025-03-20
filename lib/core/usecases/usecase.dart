import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';

abstract interface class UseCase<Success, Params> {
  Future<Either<Failure, Success>> call(Params params);
}

class NoParams {}
