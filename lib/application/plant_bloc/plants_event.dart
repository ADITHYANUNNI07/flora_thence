part of 'plants_bloc.dart';

@freezed
class PlantsEvent with _$PlantsEvent {
  const factory PlantsEvent.getPlants() = _GetPlantEvent;
}
