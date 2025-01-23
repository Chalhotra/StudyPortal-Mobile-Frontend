import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/exceptions.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/features/studymaterial/data/datasources/remote_data_source.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';
import 'package:studyportal/features/studymaterial/domain/entities/file.dart';
import 'package:studyportal/features/studymaterial/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource remoteDataSource;
  const RepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Branch>>> loadExplorePage() async {
    try {
      final branches = await remoteDataSource.loadExplorePage();
      return right(branches);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<Branch>>> fetchPins() async {
    try {
      final pins = await remoteDataSource.fetchPins();
      return right(pins);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<File>>> fetchBookmarks() async {
    try {
      final bookmarks = await remoteDataSource.fetchBookmarks();
      return right(bookmarks);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
}
