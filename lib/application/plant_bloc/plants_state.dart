part of 'plants_bloc.dart';

@freezed
class PlantsState with _$PlantsState {
  const factory PlantsState.initial() = _Initial;
  const factory PlantsState.loading() = _PlantsStateLoading;
  const factory PlantsState.success(List<PlantModel> model) =
      _PlantsStateSuccess;
  const factory PlantsState.error(String message) = _PlantsStateError;
}
