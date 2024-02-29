import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onChange;
  final String? Function(String?)? validator;
  final bool? isObscure;

  const TextFieldWidget({
    super.key,
    this.label,
    this.hint,
    this.errorMessage,
    this.onChange,
    this.validator,
    this.isObscure,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final decorationBorder = OutlineInputBorder(
      // borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(40),
    );

    return TextFormField(
      onChanged: onChange,
      validator: validator,
      obscureText: isObscure ?? false,
      decoration: InputDecoration(
          enabledBorder: decorationBorder,
          focusedBorder: decorationBorder.copyWith(
              borderSide: BorderSide(color: colors.primary)),
          errorBorder: decorationBorder.copyWith(
              borderSide: BorderSide(color: Colors.red.shade800)),
          focusedErrorBorder: decorationBorder.copyWith(
              borderSide: BorderSide(color: Colors.red.shade800)),
          focusColor: colors.primary,
          isDense: true,
          labelText: label,
          hintText: hint,
          errorText: errorMessage),
    );
  }
}
