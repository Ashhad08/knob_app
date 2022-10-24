import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../configurations/app_colors.dart';

class AuthTextField extends StatefulWidget {
  AuthTextField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    required this.isPasswordField,
    // required this.controller,
    this.obscureText = false,
    this.validator,
  }) : super(key: key);
  final String hintText;
  final IconData? prefixIcon;
  final bool isPasswordField;

  // final TextEditingController controller;
  final Function(String)? validator;
  bool obscureText;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextFormField(
        validator: (val) => widget.validator!(val!),
        obscureText: widget.obscureText,
        // controller: widget.controller,
        style: GoogleFonts.raleway(
          color: AppColors.kSecondaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: Icon(
            widget.prefixIcon,
            size: 20,
          ),
          suffixIcon: widget.isPasswordField
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                  child: widget.obscureText
                      ? const Icon(
                          Icons.visibility_off_outlined,
                          size: 20,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          size: 20,
                        ),
                )
              : null,
        ),
      ),
    );
  }
}
