part of 'add_bookmark_cubit.dart';

abstract class AddBookmarkState extends Equatable {
  const AddBookmarkState();

  @override
  List<Object?> get props => [];
}

final class AddBookmarkInitial extends AddBookmarkState {}

final class AddBookmarkLoading extends AddBookmarkState {}

final class AddBookmarkSuccess extends AddBookmarkState {
  final Bookmark bookmark;
  const AddBookmarkSuccess(this.bookmark);

  @override
  List<Object?> get props => [bookmark];
}

final class AddBookmarkFailure extends AddBookmarkState {
  final String message;
  const AddBookmarkFailure(this.message);

  @override
  List<Object?> get props => [message];
}
