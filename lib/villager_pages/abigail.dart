import 'package:flutter/material.dart';
import 'package:valley_helper/villager_infos/villager_infos.dart';
import 'package:valley_helper/layouts/information_layouts.dart';

class AbigailPage extends StatelessWidget {
  const AbigailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> currentVillager = listInfomations[0];

    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.fitHeight)),
      padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
      child: InformationTable(
        birthdayDate: currentVillager['birthDate'],
         birthdaySeason: currentVillager['birthSeason'],
         town: currentVillager['town'],
         address: currentVillager['address'],
         relative1: currentVillager['relative1'],
         relative1Icon: currentVillager['icRelative1'],
         relative2: currentVillager['relative2'],
         relative2Icon: currentVillager['icRelative2'],
         marriage: currentVillager['marriage']
         ),
    ));
  }
}

