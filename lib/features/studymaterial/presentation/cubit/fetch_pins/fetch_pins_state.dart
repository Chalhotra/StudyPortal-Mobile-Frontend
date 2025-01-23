part of 'fetch_pins_cubit.dart';

abstract class FetchPinsState extends Equatable {
  const FetchPinsState();

  @override
  List<Object?> get props => [];
}

final class FetchPinsInitial extends FetchPinsState {}

final class FetchPinsLoading extends FetchPinsState {}

final class FetchPinsLoaded extends FetchPinsState {
  final List<Branch> pins;
  const FetchPinsLoaded(this.pins);

  @override
  List<Object?> get props => [pins];
}

final class FetchPinsFailure extends FetchPinsState {
  final String message;
  const FetchPinsFailure(this.message);

  @override
  List<Object?> get props => [message];
}
