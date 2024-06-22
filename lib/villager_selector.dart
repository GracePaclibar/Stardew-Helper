import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:valley_helper/villager_pages/abigail.dart';
import 'package:valley_helper/villager_pages/alex.dart';

void goToAbigail(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AbigailPage()));
}

void goToAlex(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AlexPage()));
}

void villagerSelector(context, index) {
    switch (index) {
      case 0:
      log('Abigail');

      goToAbigail(context);

      break;
      case 1:
      log('Alex');

      goToAlex(context);
      
      break;
      case 2:
      log('Caroline');
      break;
      case 3:
      log('Clint');
      break;
      case 4:
      log('Demetrius');
      break;
      case 5:
      log('Dwarf');
      break;
      case 6:
      log('Elliott');
      break;
      case 7:
      log('Evelyn');
      break;
      case 8:
      log('George');
      break;
      case 9:
      log('Gus');
      break;
      case 10:
      log('Haley');
      break;
      case 11:
      log('Harvey');
      break;
      case 12:
      log('Jas');
      break;
      case 13:
      log('Jodi');
      break;
      case 14:
      log('Kent');
      break;
      case 15:
      log('Krobus');
      break;
      case 16:
      log('Leah');
      break;
      case 17:
      log('Leo');
      break;
      case 18:
      log('Lewis');
      break;
      case 19:
      log('Linus');
      break;
      case 20:
      log('Marnie');
      break;
      case 21:
      log('Maru');
      break;
      case 22:
      log('Pam');
      break;
      case 23:
      log('Penny');
      break;
      case 24:
      log('Pierre');
      break;
      case 25:
      log('Robin');
      break;
      case 26:
      log('Maru');
      break;
      case 27:
      log('Sam');
      break;
      case 28:
      log('Sandy');
      break;
      case 29:
      log('Sebastian');
      break;
      case 30:
      log('Shane');
      break;
      case 31:
      log('Vincent');
      break;
      case 32:
      log('Willy');
      break;
      case 33:
      log('Wizard');
      break;
    }
  }