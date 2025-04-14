part of 'upload_file_cubit.dart';

abstract class UploadFileState extends Equatable {
  const UploadFileState();

  @override
  List<Object?> get props => [];
}

final class UploadFileInitial extends UploadFileState {}

final class UploadFileLoading extends UploadFileState {}

final class UploadFileSuccess extends UploadFileState {
  final File file;
  const UploadFileSuccess(this.file);

  @override
  List<Object?> get props => [file];
}

final class UploadFileFailure extends UploadFileState {
  final String message;
  const UploadFileFailure(this.message);

  @override
  List<Object?> get props => [message];
}
