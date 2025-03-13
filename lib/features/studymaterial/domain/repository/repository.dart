import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';
import 'package:studyportal/features/studymaterial/domain/entities/course.dart';
import 'package:studyportal/features/studymaterial/domain/entities/file.dart';

abstract interface class Repository {
  Future<Either<Failure, List<Branch>>> loadExplorePage();
  Future<Either<Failure, List<Branch>>> fetchPins();
  Future<Either<Failure, List<File>>> fetchBookmarks();
  Future<Either<Failure, List<Course>>> fetchCourses(String branchId);
  Future<Either<Failure, List<File>>> fetchFiles(String courseId);
}
