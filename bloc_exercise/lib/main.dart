// import 'package:flutter/material.dart';
import 'package:bloc_exercise/dfstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//passing boll
class DearFeatureCubit extends Cubit<bool> {
  //initial state
  // DearFeatureCubit() : super(false);

  // void activateFeature() {
  //   emit(true);
  // }

  // void deactivateFeature() {
  //   emit(false);
  // }
}


//passing class

class DearFeatureCubit extends Cubit<DearFeatureState> {
  //initial state
  DearFeatureCubit() : super(DeatFeatureDiasabledState());

  void activateFeature() {
    emit(DearFeatureEnabledSate());
  }

  void deactivateFeature() {
    emit(DeatFeatureDiasabledState());
  }
}



