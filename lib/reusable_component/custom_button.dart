import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final VoidCallback? onPress;
  const CustomButton({super.key, required this.textButton, this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(
        textButton,
       style: TextStyle(
                color: Color(0xFF405D72),
                 fontSize: 16,)
        ,)
    );
  }
}
