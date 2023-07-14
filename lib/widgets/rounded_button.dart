import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPress;
  final Color color, textColor;
  final bool loading;
  const RoundedButton(
      {Key? key,
      required this.text,
      required this.onPress,
      this.color = const Color(0xFF08154A),
      this.textColor = Colors.white,
      this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          onPressed: () => onPress(),
          style: TextButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          child: Center(
            child: loading
                ? const SizedBox(
                    height: 15,
                    width: 15,
                    child: CircularProgressIndicator(
                        strokeWidth: 2, color: Colors.white),
                  )
                : Text(
                    text,
                    style: TextStyle(color: textColor),
                  ),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const Button({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}
