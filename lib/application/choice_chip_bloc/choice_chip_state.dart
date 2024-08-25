part of 'choice_chip_bloc.dart';

@freezed
class ChoiceChipState with _$ChoiceChipState {
  const factory ChoiceChipState({required int selectedSize}) = _ChoiceChipState;

  factory ChoiceChipState.initial() => const ChoiceChipState(selectedSize: 0);
}
