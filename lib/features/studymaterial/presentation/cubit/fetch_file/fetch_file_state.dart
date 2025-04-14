part of 'fetch_file_cubit.dart';

abstract class FetchFileState extends Equatable {
  const FetchFileState();

  @override
  List<Object?> get props => [];
}

final class FetchFileInitial extends FetchFileState {}

final class FetchFileLoading extends FetchFileState {}

final class FetchFileLoaded extends FetchFileState {
  final String fileUrl;
  const FetchFileLoaded(this.fileUrl);

  @override
  List<Object?> get props => [fileUrl];
}

final class FetchFileFailure extends FetchFileState {
  final String message;
  const FetchFileFailure(this.message);

  @override
  List<Object?> get props => [message];
}
