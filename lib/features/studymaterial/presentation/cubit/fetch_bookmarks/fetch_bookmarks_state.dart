part of 'fetch_bookmarks_cubit.dart';

abstract class FetchBookmarksState extends Equatable {
  const FetchBookmarksState();

  @override
  List<Object?> get props => [];
}

final class FetchBookmarksInitial extends FetchBookmarksState {}

final class FetchBookmarksLoading extends FetchBookmarksState {}

final class FetchBookmarksLoaded extends FetchBookmarksState {
  final List<File> bookmarks;
  const FetchBookmarksLoaded(this.bookmarks);

  @override
  List<Object?> get props => [bookmarks];
}

final class FetchBookmarksFailure extends FetchBookmarksState {
  final String message;
  const FetchBookmarksFailure(this.message);

  @override
  List<Object?> get props => [message];
}
