part of 'choice_chip_bloc.dart';

@freezed
class ChoiceChipEvent with _$ChoiceChipEvent {
  const factory ChoiceChipEvent.sizeSelected(int size) = _SizeSelected;
}
