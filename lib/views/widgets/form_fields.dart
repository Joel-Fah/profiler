// Simple Text Form Field
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../utils/constants.dart';

class SimpleFormField extends StatelessWidget {
  const SimpleFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.keyboardType, this.controller,
  });

  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 8.0,
              offset: Offset(0, 2),
            )
          ]),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 16.0,
          ),
          prefixIcon: Icon(prefixIcon),
          hintText: hintText,
          suffixIcon: Icon(suffixIcon),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: seedColor),
          ),
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}

// Password Text Form Field
class PasswordFormField extends StatefulWidget {
  const PasswordFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon, this.controller,
  });

  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final TextEditingController? controller;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadius,
          boxShadow: [
            primaryShadow,
          ]),
      child: TextFormField(
        controller: widget.controller,
        obscureText: _obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 16.0,
          ),
          prefixIcon: Icon(widget.prefixIcon),
          hintText: widget.hintText,
          suffixIcon: IconButton(
            icon: Icon(_obscureText ? LucideIcons.eyeOff : LucideIcons.eye),
            onPressed: () => setState(() => _obscureText = !_obscureText),
          ),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: seedColor),
          ),
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
