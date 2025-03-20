import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/entities/file.dart';
import 'package:studyportal/features/studymaterial/domain/usecases/fetch_bookmarks.dart';

part 'fetch_bookmarks_state.dart';

class FetchBookmarksCubit extends Cubit<FetchBookmarksState> {
  final FetchBookmarks fetchBookmarks;

  FetchBookmarksCubit({required this.fetchBookmarks})
      : super(FetchBookmarksInitial());

  Future<void> getBookmarks() async {
    emit(FetchBookmarksLoading());
    final response = await fetchBookmarks(NoParams());
    response.fold((failure) => emit(FetchBookmarksFailure(failure.message)),
        (bookmarks) => emit(FetchBookmarksLoaded(bookmarks)));
  }
}
