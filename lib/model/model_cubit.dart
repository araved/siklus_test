import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


part 'model_state.dart';

class ModelCubit extends Cubit<ModelState> {
  ModelCubit() : super(const ModelState());
  void increment() {
    emit(state.copyWith(counter: state.counter +1, isClicked: true));
  }
  void updateName(String value){
    final nama = value;
    emit(state.copyWith(nama: nama, isClicked: true));
  }

  void textFilled (String? value) {
    if (value!.isNotEmpty) {
      emit(state.copyWith(
          isFilled: true));
    } else {
      emit(state.copyWith(
          nama: value,
          isFilled: false,
          isClicked: false));
    }
  }
}
