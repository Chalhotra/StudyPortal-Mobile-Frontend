import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/entities/pin.dart';
import 'package:studyportal/features/studymaterial/domain/repository/repository.dart';

class RemovePin implements UseCase<bool, Pin> {
  final Repository repository;
  const RemovePin(this.repository);

  @override
  Future<Either<Failure, bool>> call(Pin pin) async {
    return await repository.removePin(pin);
  }
}
