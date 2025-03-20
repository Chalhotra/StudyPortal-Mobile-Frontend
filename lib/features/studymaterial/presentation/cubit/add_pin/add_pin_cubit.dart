import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:studyportal/features/studymaterial/domain/entities/pin.dart';
import 'package:studyportal/features/studymaterial/domain/usecases/add_pin.dart';

part 'add_pin_state.dart';

class AddPinCubit extends Cubit<AddPinState> {
  final AddPin addpin;

  AddPinCubit({required this.addpin}) : super(AddPinInitial());

  Future<void> addPin(Pin pin) async {
    emit(AddPinLoading());
    final response = await addpin(pin);
    response.fold((failure) => emit(AddPinFailure(failure.message)),
        (pin) => emit(AddPinSuccess(pin)));
  }
}
