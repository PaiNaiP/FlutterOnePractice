import 'package:flutter/material.dart';
import 'package:flutter_application_1/pageone.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //Виджет с изменяемым состоянием.
  @override
  State<MyApp> createState() => _myState();
}

class _myState extends State<MyApp> {
  late ThemeMode _themeMode;
  @override
  void initState() {
    _themeMode = ThemeMode.system; //default value
    SharedPreferences.getInstance().then((pref) => {
          //Получить общие настройки
          if (pref.containsKey("Themes"))
            {
              setState((() => {
                    if (pref.getBool("Themes") == true)
                      ThemeMode.light
                    else
                      ThemeMode.dark
                  }))
            }
          else
            pref.setBool(
                "Themes",
                Theme.of(context).brightness ==
                    Brightness
                        .light) // смена темы во время выполнения программы
        });
    super
        .initState(); //метод, который вызывается один раз, когда виджет с отслеживанием состояния вставляется в дерево виджетов.
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        themeMode: _themeMode,
        darkTheme: ThemeData.dark(),
        theme: ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(title: Text('App Bar')),
          body: Center(
              child: pageone(
                  theme: (themeMode) => setState((() => {
                        _themeMode = themeMode,
                        SharedPreferences.getInstance().then((value) => value
                            .setBool("Themes", _themeMode == ThemeMode.light))
                      })))),
        ));
  }
}
