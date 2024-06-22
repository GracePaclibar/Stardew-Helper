import 'package:flutter/material.dart';
import 'package:valley_helper/page_navigation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Valley Helper';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(appTitle),
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.fitHeight)),
            padding: const EdgeInsets.all(15),
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ButtonWidget(
                      icon: 'assets/images/ic_leah_head.png',
                      title: 'Villagers',
                      page: 'villagers',)
                ])),
      ),
    );
  }
}

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.page
  });

  final String icon;
  final String title;
  final String page;

  @override
  ButtonWidgetState createState() => ButtonWidgetState();
}

class ButtonWidgetState extends State<ButtonWidget> {
  bool _isPressed = false;

void pageSelector(context, page) {
    switch (page) {
      case 'villagers': {
        goToVillagers(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTapDown: (_) {
          setState(() {
            _isPressed = true;
            pageSelector(context, widget.page);
          });
        },
        onTapUp: (_) {
          setState(() {
            _isPressed = false;
          });
        },
        child: AnimatedScale(
          scale: _isPressed ? 0.95 : 1,
          duration: const Duration(milliseconds: 100),
          child: Container(
            padding: const EdgeInsets.all(25),
            height: 150,
            margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/dialogue_box.png'),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Image.asset(
                    widget.icon,
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(widget.title,
                          style: const TextStyle(
                              fontFamily: 'SDV',
                              fontSize: 50,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff541707),
                              shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(0, 3),
                                    blurRadius: 5,
                                    color: Color.fromARGB(80, 0, 0, 0))
                              ])),
                    ))
              ],
            ),
          ),
        ));
  }
}
