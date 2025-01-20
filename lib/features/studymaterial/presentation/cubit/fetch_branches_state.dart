part of 'fetch_branches_cubit.dart';

abstract class FetchBranchesState extends Equatable {
  const FetchBranchesState();

  @override
  List<Object?> get props => [];
}

final class FetchBranchesInitial extends FetchBranchesState {}

final class FetchBranchesLoading extends FetchBranchesState {}

final class FetchBranchesLoaded extends FetchBranchesState {
  final List<Branch> branches;
  const FetchBranchesLoaded(this.branches);

  @override
  List<Object?> get props => [branches];
}

final class FetchBranchesFailure extends FetchBranchesState {
  final String message;
  const FetchBranchesFailure(this.message);

  @override
  List<Object?> get props => [message];
}
