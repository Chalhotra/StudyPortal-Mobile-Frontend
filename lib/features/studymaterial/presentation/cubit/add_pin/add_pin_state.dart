part of 'add_pin_cubit.dart';

abstract class AddPinState extends Equatable {
  const AddPinState();

  @override
  List<Object?> get props => [];
}

final class AddPinInitial extends AddPinState {}

final class AddPinLoading extends AddPinState {}

final class AddPinSuccess extends AddPinState {
  final Pin pin;
  const AddPinSuccess(this.pin);

  @override
  List<Object?> get props => [pin];
}

final class AddPinFailure extends AddPinState {
  final String message;
  const AddPinFailure(this.message);

  @override
  List<Object?> get props => [message];
}
