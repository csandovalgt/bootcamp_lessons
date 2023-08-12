import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Widget? prefixIcon;
  final bool isPassword;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final Function(String) onSubmit;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  const CustomFormField({
    Key? key,
    required this.controller,
    required this.label,
    this.prefixIcon,
    this.isPassword = false,
    this.suffixIcon,
    this.focusNode,
    required this.onSubmit,
    this.keyboardType = TextInputType.text,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Column(
        children: [
          Text(label),
          TextFormField(
            focusNode: focusNode,
            controller: controller,
            keyboardType: keyboardType,
            obscureText: isPassword,
            onFieldSubmitted: (String value) {
              onSubmit(value);
            },
            decoration: InputDecoration(
              hintText: label,
              hintStyle: TextStyle(
                color: Colors.blue,
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
            validator: validator,
          ),
        ],
      ),
    );
  }
}
