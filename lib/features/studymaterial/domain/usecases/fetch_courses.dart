import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/entities/course.dart';
import 'package:studyportal/features/studymaterial/domain/repository/repository.dart';

class FetchCourses implements UseCase<List<Course>, String> {
  final Repository repository;
  const FetchCourses(this.repository);

  @override
  Future<Either<Failure, List<Course>>> call(String branchId) async {
    return await repository.fetchCourses(branchId);
  }
}
