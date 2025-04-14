import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:studyportal/features/studymaterial/domain/usecases/fetch_file.dart';

part 'fetch_file_state.dart';

class FetchFileCubit extends Cubit<FetchFileState> {
  final FetchFile fetchFile;
  FetchFileCubit({required this.fetchFile}) : super(FetchFileInitial());

  Future<void> getFile(int fileId) async {
    emit(FetchFileLoading());
    final response = await fetchFile(fileId);
    response.fold((failure) => FetchFileFailure(failure.message),
        (fileUrl) => FetchFileLoaded(fileUrl));
  }
}
