import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final GestureTapCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  State<CustomButton> createState() => _CustomButton();
}

class _CustomButton extends State< CustomButton> {
  TextEditingController nameController = new TextEditingController();
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
          child: TextButton(
          style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
              onPressed: widget.onPressed,
              child: Text(
                widget.text, 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                   ),
                   ),
                  );
                  
}
}