import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pagetwo extends StatefulWidget {
  const pagetwo({super.key, required this.theme});
  final void Function(ThemeMode) theme;
  @override
  State<pagetwo> createState() => _pgtwo();
}

class _pgtwo extends State<pagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => widget.theme(
              Theme.of(context).brightness == Brightness.light
                  ? ThemeMode.dark
                  : ThemeMode.light)),
      body: Center(
          child: Text(
              (ModalRoute.of(context)?.settings.arguments as String?) ?? "")),
    );
  }
}
