part of 'fetch_files_cubit.dart';

abstract class FetchFilesState extends Equatable {
  const FetchFilesState();

  @override
  List<Object?> get props => [];
}

final class FetchFilesInitial extends FetchFilesState {}

final class FetchFilesLoading extends FetchFilesState {}

final class FetchFilesLoaded extends FetchFilesState {
  final List<File> files;
  const FetchFilesLoaded(this.files);

  @override
  List<Object?> get props => [files];
}

final class FetchFilesFailure extends FetchFilesState {
  final String message;
  const FetchFilesFailure(this.message);

  @override
  List<Object?> get props => [message];
}
