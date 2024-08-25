import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flora/data/model/plant_model.dart';
import 'package:flora/data/repositories/plant/plant_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plants_event.dart';
part 'plants_state.dart';
part 'plants_bloc.freezed.dart';

class PlantsBloc extends Bloc<PlantsEvent, PlantsState> {
  final PlantRepo plantRepo;
  PlantsBloc(this.plantRepo) : super(const PlantsState.initial()) {
    on<_GetPlantEvent>((event, emit) async {
      emit(const PlantsState.loading());
      try {
        final result = await plantRepo.getPlantsRepo();
        if (result is String) {
          log(result.toString());
          emit(PlantsState.error(result));
        } else {
          emit(PlantsState.success(result));
        }
      } catch (e) {
        log(e.toString());
        emit(PlantsState.error(e.toString()));
      }
    });
  }
}
