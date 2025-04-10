import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:studyportal/features/studymaterial/domain/entities/pin.dart';
import 'package:studyportal/features/studymaterial/domain/usecases/remove_pin.dart';

part 'remove_pin_state.dart';

class RemovePinCubit extends Cubit<RemovePinState> {
  final RemovePin removepin;

  RemovePinCubit({required this.removepin}) : super(RemovePinInitial());

  Future<void> removePin(Pin pin) async {
    emit(RemovePinLoading());
    final response = await removepin(pin);
    response.fold((failure) => emit(RemovePinFailure(failure.message)),
        (pin) => emit(RemovePinSuccess(pin)));
  }
}
