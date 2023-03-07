import 'package:flutter/material.dart';
import 'package:timelinescrollview/widgets/glass_card.dart';

class Item extends StatelessWidget {
  final String textToPut;
  final String month;
  final String date;
  const Item(
      {super.key,
      required this.textToPut,
      required this.month,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 2,
              height: 80,
              color: Colors.black,
            ),
            Column(
              children: [
                Text(
                  month,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            GlassCard(
              textToPut: textToPut,
            ),
          ],
        ),
      ],
    );
  }
}
