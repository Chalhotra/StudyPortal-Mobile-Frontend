part of 'fetch_courses_cubit.dart';

abstract class FetchCoursesState extends Equatable {
  const FetchCoursesState();

  @override
  List<Object?> get props => [];
}

final class FetchCoursesInitial extends FetchCoursesState {}

final class FetchCoursesLoading extends FetchCoursesState {}

final class FetchCoursesLoaded extends FetchCoursesState {
  final List<Course> courses;
  const FetchCoursesLoaded(this.courses);

  @override
  List<Object?> get props => [courses];
}

final class FetchCoursesFailure extends FetchCoursesState {
  final String message;
  const FetchCoursesFailure(this.message);

  @override
  List<Object?> get props => [message];
}
