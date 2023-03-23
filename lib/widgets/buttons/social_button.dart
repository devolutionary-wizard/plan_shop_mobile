import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  IconData iconData;
  String text;
  Function()? onTap;
   SocialButton({Key? key, required this.iconData,required this.text,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.white,shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
        child: ListTile(
          onTap: onTap,
          leading: Icon(iconData),
          title: Text(text),
          trailing: const Icon(Icons.arrow_right_outlined),
        ));
  }
}
