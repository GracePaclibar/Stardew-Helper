import 'package:flutter/material.dart';

class InformationTable extends StatelessWidget {
  final String birthdayDate;
  final String birthdaySeason;
  final String town;
  final String address;
  final String? relative1Icon;
  final String? relative1;
  final String? relative2Icon;
  final String? relative2;
  final String? relative3Icon;
  final String? relative3;
  final String marriage;

  const InformationTable({
    super.key,
    required this.birthdayDate,
    required this.birthdaySeason,
    required this.town,
    required this.address,
    this.relative1,
    this.relative1Icon,
    this.relative2,
    this.relative2Icon,
    this.relative3,
    this.relative3Icon,
    required this.marriage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Information',
          style: TextStyle(
            fontFamily: "SDV",
            fontSize: 50,
            fontWeight: FontWeight.normal,
            color: Colors.white,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(0, 3),
                blurRadius: 5,
                color: Color.fromARGB(80, 0, 0, 0),
              ),
            ],
          ),
        ),
        Container(
            color: const Color.fromARGB(150, 255, 255, 255),
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            child: IntrinsicHeight(
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 85,
                    child: Text(
                      'Birthday',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 2,
                    color: Color.fromARGB(100, 0, 0, 0),
                  ),
                  Image.asset(
                    birthdaySeason,
                    height: 24,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    birthdayDate,
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )),
        Container(
            color: const Color.fromARGB(150, 255, 255, 255),
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            child: IntrinsicHeight(
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 85,
                    child: Text(
                      'Lives In',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 2,
                    color: Color.fromARGB(100, 0, 0, 0),
                  ),
                  Text(
                    town,
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )),
        Container(
            color: const Color.fromARGB(150, 255, 255, 255),
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            child: IntrinsicHeight(
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 85,
                    child: Text(
                      'Address',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 2,
                    color: Color.fromARGB(100, 0, 0, 0),
                  ),
                  Text(
                    address,
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )),
        Container(
            color: const Color.fromARGB(150, 255, 255, 255),
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            child: IntrinsicHeight(
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 85,
                    child: Text(
                      'Family',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 2,
                    color: Color.fromARGB(100, 0, 0, 0),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              relative1Icon!,
                              height: 24,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                relative1!,
                                style: const TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              relative2Icon!,
                              height: 24,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                relative2!,
                                style: const TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
        Container(
            color: const Color.fromARGB(150, 255, 255, 255),
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            child: IntrinsicHeight(
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 85,
                    child: Text(
                      'Marriage',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 2,
                    color: Color.fromARGB(100, 0, 0, 0),
                  ),
                  Text(
                    marriage,
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
