import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savedata/src/pages/textfield/string_extensions.dart';

class TextFieldRow extends StatefulWidget {
  const TextFieldRow({Key key}) : super(key: key);

  @override
  _TextFieldRowState createState() => _TextFieldRowState();
}

class _TextFieldRowState extends State<TextFieldRow> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(child: SizedBox()),
      Flexible(
          child: TextFormField(
              decoration: InputDecoration(
        helperText: '',
        hintText: 'Row',
        labelText: '2 in a row',
      ))),
      Flexible(
          child: TextFormField(
              decoration: InputDecoration(
        helperText: '',
        hintText: 'Row',
        labelText: '2 in a row',
      ))),
      Flexible(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary:
              Colors.red, // background onPrimary: Colors.white, // foreground
        ),
        onPressed: () {},
        child: Text('ElevatedButton with custom foreground/background'),
      ))
    ]);
  }
}
