import 'package:flutter/material.dart';

class MyInputTheme {
  TextStyle _builtTextStyle(Color color, {double size = 16.0}) {
    return TextStyle(color: color, fontSize: size);
  }

  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: color,
          width: 1.0,
        ));
  }

  InputDecorationTheme theme() => InputDecorationTheme(
        contentPadding: EdgeInsets.all(16),
        isDense: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        // constraints: BoxConstraints(maxWidth: 150),
        enabledBorder: _buildBorder(Colors.grey[600]),
        errorBorder: _buildBorder(Colors.red),
        focusedErrorBorder: _buildBorder(Colors.red),
        border: _buildBorder(Colors.yellow),
        focusedBorder: _buildBorder(Colors.blue),
        disabledBorder: _buildBorder(Colors.grey[400]),
        suffixStyle: _builtTextStyle(Colors.black),
        counterStyle: _builtTextStyle(Colors.grey, size: 12.0),
        floatingLabelStyle: _builtTextStyle(Colors.black),
        errorStyle: _builtTextStyle(Colors.red, size: 12.0),
        helperStyle: _builtTextStyle(Colors.red, size: 12.0),
        hintStyle: _builtTextStyle(Colors.red, size: 12.0),
        labelStyle: _builtTextStyle(Colors.red, size: 12.0),
        prefixStyle: _builtTextStyle(Colors.red, size: 12.0),
      );
}
