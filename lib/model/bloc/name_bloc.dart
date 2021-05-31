import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'name_event.dart';
part 'name_state.dart';

class NameBloc extends Bloc<NameEvent, NameState> {
  NameBloc() : super(NameInitial());

  @override
  Stream<NameState> mapEventToState(
    NameEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
