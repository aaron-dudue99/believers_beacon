import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  final String title;
  final String imagePath;

  const HomeTile({Key? key, required this.title, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 105,
      child: Container(
          width: 155,
          decoration: BoxDecoration(
              color: const Color(0xFFF1F2F3),
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                    color: Color(0x268163D6),
                    blurRadius: 8,
                    offset: Offset(2, 8),
                    spreadRadius: 0)
              ]),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                        color: Color(0xFFF1F2F3),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x268163D6),
                              blurRadius: 8,
                              offset: Offset(2, 8),
                              spreadRadius: 0)
                        ]),
                    child: Image.asset(imagePath)),
                const SizedBox(height: 10),
                Text(title)
              ],
            ),
          )),
    );
  }
}
