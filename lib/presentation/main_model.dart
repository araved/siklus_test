
import 'package:flutter/material.dart';

class Model {

  final TextEditingController textEditingController = TextEditingController();
  final FocusNode textFocusNode = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey();

  Widget button({required bool isEnabled, required void Function() callback, required title}) {
    return ElevatedButton(
      onPressed: isEnabled
          ? callback
          : () => print('not enabled'),
      child: Text(title),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(88, 36),
        primary: isEnabled
            ? Color(0xFF4572D9)
            : Colors.grey,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
      ),
    );
  }



  Widget textResult({int? count, String? nama}){
    if(nama != ''){
      if (count != 0){
        return Text('Hi, $nama. Kamu sudah menekan tombol add sebanyak $count');
      }
      return Text('Hi, $nama');
    } else {
      return Text('Result');
    }



}

}