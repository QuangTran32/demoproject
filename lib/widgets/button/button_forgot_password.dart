import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget{
  final void Function() onPressed;
  const ForgotPasswordButton({
    super.key,
    required this.onPressed,
});
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(horizontal: 16)),
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 255, 255, 255)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          minimumSize: MaterialStateProperty.all<Size>(const Size(328, 48)),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/pngwing1.com.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              'Forgot Password',
              style: TextStyle(color: Color(0xFF333333)),
            )
          ],
        ));
  }
}