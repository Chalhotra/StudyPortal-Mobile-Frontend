import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:studyportal/features/studymaterial/domain/entities/bookmark.dart';
import 'package:studyportal/features/studymaterial/domain/usecases/add_bookmark.dart';

part 'add_bookmark_state.dart';

class AddBookmarkCubit extends Cubit<AddBookmarkState> {
  final AddBookmark addbookmark;

  AddBookmarkCubit({required this.addbookmark}) : super(AddBookmarkInitial());

  Future<void> addBookmark(bookmark) async {
    emit(AddBookmarkLoading());
    final response = await addbookmark(bookmark);
    response.fold((failure) => emit(AddBookmarkFailure(failure.message)),
        (bookmark) => emit(AddBookmarkSuccess(bookmark)));
  }
}
