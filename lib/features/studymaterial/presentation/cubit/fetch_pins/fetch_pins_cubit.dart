import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:studyportal/core/usecases/usecase.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';
import 'package:studyportal/features/studymaterial/domain/usecases/fetch_pins.dart';

part 'fetch_pins_state.dart';

class FetchPinsCubit extends Cubit<FetchPinsState> {
  final FetchPins fetchPins;

  FetchPinsCubit({required this.fetchPins}) : super(FetchPinsInitial());

  Future<void> getPins() async {
    emit(FetchPinsLoading());
    final response = await fetchPins(NoParams());
    response.fold((failure) => emit(FetchPinsFailure(failure.message)),
        (pins) => emit(FetchPinsLoaded(pins)));
  }
}
