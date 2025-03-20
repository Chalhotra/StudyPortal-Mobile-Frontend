import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:studyportal/features/studymaterial/domain/entities/bookmark.dart';
import 'package:studyportal/features/studymaterial/domain/usecases/remove_bookmark.dart';

part 'remove_bookmark_state.dart';

class RemoveBookmarkCubit extends Cubit<RemoveBookmarkState> {
  final RemoveBookmark removebookmark;

  RemoveBookmarkCubit({required this.removebookmark})
      : super(RemoveBookmarkInitial());

  Future<void> removeBookmark(bookmark) async {
    emit(RemoveBookmarkLoading());
    final response = await removebookmark(bookmark);
    response.fold((failure) => emit(RemoveBookmarkFailure(failure.message)),
        (bookmark) => emit(RemoveBookmarkSuccess(bookmark)));
  }
}
