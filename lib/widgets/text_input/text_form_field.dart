import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController textEditingController;
  int? maxLines, minLines;
  final Function()? onTap;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  Color? fillColor;
  String? hintText;

  CustomTextFormField(
      {Key? key,
      required this.textEditingController,
      this.validator,
      this.maxLines,
      this.minLines,
      this.onChanged,
      this.onTap,
      this.fillColor,this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      cursorColor: Colors.black,
      controller: textEditingController,
      validator: validator,
      maxLines: maxLines,
      minLines: minLines,
      onChanged: onChanged,
      onTap: onTap,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        filled: true,
        fillColor: fillColor ?? Colors.grey[300],
        hintText: hintText
      ),
    );
  }
}
