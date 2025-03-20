part of 'remove_pin_cubit.dart';

abstract class RemovePinState extends Equatable {
  const RemovePinState();

  @override
  List<Object?> get props => [];
}

final class RemovePinInitial extends RemovePinState {}

final class RemovePinLoading extends RemovePinState {}

final class RemovePinSuccess extends RemovePinState {
  final Pin pin;
  const RemovePinSuccess(this.pin);

  @override
  List<Object?> get props => [pin];
}

final class RemovePinFailure extends RemovePinState {
  final String message;
  const RemovePinFailure(this.message);

  @override
  List<Object?> get props => [message];
}
