import 'package:flutter/material.dart';
import 'package:savedata/src/pages/textfield/components/password_field.dart';
import 'package:savedata/src/pages/textfield/components/text_field_row.dart';

class TextFieldInRowPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('input Decoration theme')),
        body: ListView(
          padding: const EdgeInsets.all(32.0),
          children: <Widget>[
            PassWordField(),
            // NumberField(),
            // EmailField(),
            // EmailField(),
            // DisabledField(),
            // MultilineField(),
            TextFieldRow(),
          ]
              .map((child) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: child,
                  ))
              .toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final isValid = _formKey.currentState.validate();
            print('form is valid: $isValid');
          },
          child: const Icon(Icons.check),
        ));
  }
}
