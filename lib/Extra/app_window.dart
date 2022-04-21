import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

const borderColor = Color.fromARGB(255, 0, 0, 0);


class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonColors = WindowButtonColors(
      iconNormal: Theme.of(context).textTheme.button!.color,
      mouseOver: Theme.of(context).buttonTheme.colorScheme!.background,
      mouseDown: Theme.of(context).highlightColor,
      iconMouseOver: Theme.of(context).textTheme.button!.color,
      iconMouseDown: Theme.of(context).textTheme.button!.color);

    final closeButtonColors = WindowButtonColors(
      mouseOver: const Color(0xFFD32F2F),
      mouseDown: const Color(0xFFB71C1C),
      iconNormal: Theme.of(context).textTheme.button!.color,
      iconMouseOver: Colors.white);

    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
