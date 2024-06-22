import 'package:flutter/material.dart';
import 'villagers.dart';

void goToVillagers(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const VillagersPage()));
  }