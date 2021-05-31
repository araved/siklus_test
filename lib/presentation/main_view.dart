import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:siklus_test/model/model_cubit.dart';

import 'main_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);


  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Model model = Model();
  String name = '';



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          backgroundColor: Color(0xFF4572D9),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: BlocBuilder<ModelCubit, ModelState>(
            builder: (context, state) {
              return Column(
                children: [
                  TextFormField(
                    focusNode: model.textFocusNode,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
                    ],
                    controller: model.textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Nama'
                    ),
                    onChanged: (value) {
                      value = model.textEditingController.text;
                      BlocProvider.of<ModelCubit>(context).textFilled(value);
                    },
                    onFieldSubmitted: (_) => model.textFocusNode.unfocus(),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  model.button(
                      isEnabled: state.isFilled,
                      callback: () {
                        BlocProvider.of<ModelCubit>(context)
                          .updateName(model.textEditingController.text);
                          },
                      title: 'Confirm'
                  ),
                  model.button(
                      isEnabled: state.isClicked,
                      callback: () => BlocProvider.of<ModelCubit>(context).increment(),
                      title: 'Add'
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  model.textResult(count: state.counter, nama: state.nama),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
