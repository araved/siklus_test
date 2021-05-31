import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'model_state.dart';

class ModelCubit extends Cubit<ModelState> {
  ModelCubit() : super(ModelState(
    counter: 0,
  ));
  void increment() {
    emit(ModelState(counter: state.counter! +1));
    print('cobain: ${state.counter}');
  }
  void updateName(String value){
    state.nama = value;
    emit(ModelState(nama: state.nama, isClicked: true));
    print('test: ${state.nama}');
  }

  void textFilled (String? value) {
    if (value!.isNotEmpty)
      emit(ModelState(isFilled: true));
    else
      emit(ModelState(isFilled: false));
  }
}
