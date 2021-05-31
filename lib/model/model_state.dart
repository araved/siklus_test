part of 'model_cubit.dart';


class ModelState {
  int? counter;
  String? nama;
  bool isFilled;
  bool isClicked;

  ModelState({this.counter, this.nama, this.isFilled = false, this.isClicked = false});
}