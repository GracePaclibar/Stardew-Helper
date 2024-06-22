import 'package:flutter/material.dart';
import 'villager_names.dart';
import 'villager_images.dart';
import 'villager_selector.dart';

void main() {
  runApp(const VillagersPage());
}

class VillagersPage extends StatelessWidget {
  const VillagersPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Villagers';
    return MaterialApp(
        title: appTitle,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 244, 212, 151),
              centerTitle: true,
              title: const Text(appTitle),
            ),
            body: const VillagerList()));
  }
}

class VillagerList extends StatefulWidget {
  const VillagerList({super.key});

  @override
  VillagerListState createState() => VillagerListState();
}

class VillagerListState extends State<VillagerList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      padding: const EdgeInsets.all(8),
      itemCount: names.length,
      itemBuilder: (BuildContext context, int index) => CustomListTile(
        icon: images[index],
        title: names[index],
        height: 100,
        index: index,
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String icon;
  final String title;
  final double height;
  final int index;

  const CustomListTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.height,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          villagerSelector(context, index);
        },
        child: SizedBox(
          height: height,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Image.asset(icon),
              ),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'SDV',
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff541707),
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(0, 3),
                            blurRadius: 5,
                            color: Color.fromARGB(80, 0, 0, 0))
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
