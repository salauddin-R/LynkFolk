import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final IconData? suffixIcon;
  final bool isPassword;
  final TextInputType keyboardType;
  final int maxLines;
  final Color? fillColor;
  final Color? IconColor;
  final Color? BorderColor;
  final double? fontsizes;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.fillColor,
    this.IconColor,
    this.BorderColor,
    this.fontsizes,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: widget.BorderColor ?? Colors.white,width: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        hintText: widget.labelText,
        hintStyle:TextStyle(color: Colors.black,fontSize:widget.fontsizes!=null?widget.fontsizes:14),
        floatingLabelBehavior: FloatingLabelBehavior.auto,

        // Background
        filled: true,
        fillColor:widget.fillColor ?? Colors.white,

        // Prefix Icon (Optional)
        prefixIcon: widget.prefixIcon != null
            ? (widget.maxLines!=1)? Padding(
      padding: EdgeInsets.only(bottom:(90/5)*widget.maxLines),
      child: widget.prefixIcon,
    ): widget.prefixIcon
            : null,
        // Suffix Icon (Password OR Custom)
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ) : (widget.suffixIcon != null
            ? Icon(widget.suffixIcon, color: Colors.grey)
            : null),

        enabledBorder: _border(),
        focusedBorder: _border(),
        border: _border(),

        contentPadding:
        const EdgeInsets.symmetric(horizontal: 16 ),
      ),
    );
  }
}




