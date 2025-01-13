import 'package:fpdart/fpdart.dart';
import 'package:studyportal/core/errors/exceptions.dart';
import 'package:studyportal/core/errors/failures.dart';
import 'package:studyportal/features/studymaterial/data/datasources/remote_data_source.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';
import 'package:studyportal/features/studymaterial/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource remoteDataSource;
  const RepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Branch>>> loadExplorePage({required List<Branch> branches}) async {
    try {
      final branchList = await remoteDataSource.loadExplorePage(branches: branches);
      return right(branchList);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }

}