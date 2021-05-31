
import 'package:flutter/material.dart';

class Model {

  final TextEditingController textEditingController = TextEditingController();

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






  

}