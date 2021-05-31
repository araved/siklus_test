part of 'model_cubit.dart';



class ModelState extends Equatable{
  final int counter;
  final String nama;
  final bool isFilled;
  final bool isClicked;



  const ModelState({
    this.counter = 0,
    this.nama = '',
    this.isFilled = false,
    this.isClicked = false, 
    });

  @override
  List<Object?> get props => [counter,nama,isFilled,isClicked];

  ModelState copyWith({
    int? counter,
    String? nama,
    bool? isFilled,
    bool? isClicked,
  }) {
    return ModelState(
      counter: counter ?? this.counter,
      nama: nama ?? this.nama,
      isFilled: isFilled ?? this.isFilled,
      isClicked: isClicked ?? this.isClicked,
    );
  }
}