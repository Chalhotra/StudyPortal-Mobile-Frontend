import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:studyportal/features/studymaterial/domain/entities/course.dart';
import 'package:studyportal/features/studymaterial/domain/usecases/fetch_courses.dart';

part 'fetch_courses_state.dart';

class FetchCoursesCubit extends Cubit<FetchCoursesState> {
  final FetchCourses fetchCourses;

  FetchCoursesCubit({required this.fetchCourses})
      : super(FetchCoursesInitial());

  Future<void> getCourses(String branchId) async {
    emit(FetchCoursesLoading());
    final response = await fetchCourses(branchId);
    response.fold((failure) => emit(FetchCoursesFailure(failure.message)),
        (courses) => emit(FetchCoursesLoaded(courses)));
  }
}
