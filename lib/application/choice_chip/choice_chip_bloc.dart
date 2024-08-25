import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice_chip_event.dart';
part 'choice_chip_state.dart';
part 'choice_chip_bloc.freezed.dart';

class ChoiceChipBloc extends Bloc<ChoiceChipEvent, ChoiceChipState> {
  ChoiceChipBloc() : super(ChoiceChipState.initial()) {
    on<_SizeSelected>((event, emit) {
      emit(state.copyWith(selectedSize: event.size));
    });
  }
}
