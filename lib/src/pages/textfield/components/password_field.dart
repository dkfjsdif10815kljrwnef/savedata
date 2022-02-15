import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savedata/src/pages/textfield/string_extensions.dart';

class PassWordField extends StatefulWidget {
  const PassWordField({Key key}) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PassWordField> {
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (s) {
        if (s.isWhitespace()) {
          return 'this is a required field';
        }
      },
      obscureText: obscurePassword,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          labelText: "password field",
          helperText: '',
          suffixIcon: IconButton(
              onPressed: () =>
                  setState(() => obscurePassword = obscurePassword),
              icon: Icon(
                  obscurePassword ? Icons.visibility : Icons.visibility_off,
                  color: Colors.blue))),
    );
  }
}
