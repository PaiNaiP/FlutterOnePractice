import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagetwo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class pageone extends StatefulWidget {
  const pageone({super.key, required this.theme});
  final void Function(ThemeMode) theme;
  @override
  State<pageone> createState() => _pgone();
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Text(count.toString()),
  //   );
  // }
}

class _pgone extends State<pageone> {
  final TextEditingController controller = TextEditingController();
  @override
  void initState() {
    SharedPreferences.getInstance().then((pref) => {
          if (pref.containsKey("text"))
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => pagetwo(theme: widget.theme),
                      settings:
                          RouteSettings(arguments: pref.getString("text"))))
            }
        });
    super.initState();
  }

  @override
  Widget build(BuildContext _buildContext) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => widget.theme(
            Theme.of(context).brightness == Brightness.light
                ? ThemeMode.dark
                : ThemeMode.light),
        child: Icon(Icons.edit),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(children: [
          SizedBox(
            height: 20,
            child: TextField(
              controller: controller,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                  onPressed: (() {
                    if (controller.text.isNotEmpty) {
                      SharedPreferences.getInstance().then(
                          (value) => value.setString("text", controller.text));
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => pagetwo(
                                theme: widget.theme,
                              ),
                          settings: RouteSettings(arguments: controller.text)),
                    );
                  }),
                  child: Text('Кнопка для перехода')))
        ]),
      ),
    );
  }
}
