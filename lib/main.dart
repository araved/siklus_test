import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:siklus_test/model/model_cubit.dart';
import 'package:siklus_test/presentation/main_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ModelCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Siklus Test',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MainPage()),
    );
  }
}

