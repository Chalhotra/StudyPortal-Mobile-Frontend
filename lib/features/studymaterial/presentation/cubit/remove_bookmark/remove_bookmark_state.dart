part of 'remove_bookmark_cubit.dart';

abstract class RemoveBookmarkState extends Equatable {
  const RemoveBookmarkState();

  @override
  List<Object?> get props => [];
}

final class RemoveBookmarkInitial extends RemoveBookmarkState {}

final class RemoveBookmarkLoading extends RemoveBookmarkState {}

final class RemoveBookmarkSuccess extends RemoveBookmarkState {
  final Bookmark bookmark;
  const RemoveBookmarkSuccess(this.bookmark);

  @override
  List<Object?> get props => [bookmark];
}

final class RemoveBookmarkFailure extends RemoveBookmarkState {
  final String message;
  const RemoveBookmarkFailure(this.message);

  @override
  List<Object?> get props => [message];
}
