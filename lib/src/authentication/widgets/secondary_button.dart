import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required this.text,
    this.buttonColor,
    this.textColor,
    required this.iconImage,
  }) : super(key: key);

  final String text;
  final Color? buttonColor;
  final Color? textColor;
  final String iconImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width * .90,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 40,
              height: 40,
              image: AssetImage(
                iconImage,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .05,
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
