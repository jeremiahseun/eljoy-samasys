import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(children: [
            const Icon(Icons.menu, size: 40, color: Colors.black),
            Container(
              height: 50,
              width: 1,
              color: Colors.black,
              margin: const EdgeInsets.symmetric(horizontal: 10),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FittedBox(
                    child: Text("S A M A S Y S",
                        style: theme.textTheme.headline4!.copyWith(
                          letterSpacing: 3.5,
                          wordSpacing: 3.5,
                        )),
                  ),
                  Text(
                    "combat salary fraud",
                    style: theme.textTheme.subtitle1,
                  )
                ],
              ),
            )
          ]),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
        ],
      ),
    );
  }
}
