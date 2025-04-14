import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:studyportal/features/studymaterial/domain/entities/file.dart';
import 'package:studyportal/features/studymaterial/domain/usecases/upload_file.dart';

part 'upload_file_state.dart';

class UploadFileCubit extends Cubit<UploadFileState> {
  final UploadFile uploadfile;

  UploadFileCubit({required this.uploadfile}) : super(UploadFileInitial());

  Future<void> uploadFile(File file) async {
    emit(UploadFileLoading());
    final response = await uploadfile(file);
    response.fold((failure) => emit(UploadFileFailure(failure.message)),
        (file) => emit(UploadFileSuccess(file)));
  }
}
