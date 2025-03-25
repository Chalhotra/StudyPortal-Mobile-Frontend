import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';
import 'package:studyportal/features/studymaterial/domain/usecases/fetch_branches.dart';

part 'fetch_branches_state.dart';

class FetchBranchesCubit extends Cubit<FetchBranchesState> {
  final FetchBranches fetchBranches;

  FetchBranchesCubit({required this.fetchBranches})
      : super(FetchBranchesInitial());

  Future<void> getBranches() async {
    emit(FetchBranchesLoading());
    final response = await fetchBranches(NoParams());
    response.fold((failure) => emit(FetchBranchesFailure(failure.message)),
        (branches) => emit(FetchBranchesLoaded(branches)));
  }
}
