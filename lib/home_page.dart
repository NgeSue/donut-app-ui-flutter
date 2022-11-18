import 'package:flutter/material.dart';
import './util/my_tab.dart';
import './tabs/burger_tab.dart';
import './tabs/pizza_tab.dart';
import './tabs/pancake_tab.dart';
import './tabs/donut_tab.dart';
import './tabs/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //donut tab
    MyTab(
      tap: true,
      iconPath: 'lib/icons/donut.png',
    ),

    //burger tab
    MyTab(
      tap: false,
      iconPath: 'lib/icons/burger.png',
    ),

    //smoothie tab
    MyTab(
      tap: false,
      iconPath: 'lib/icons/smoothie.png',
    ),

    //pancake tab
    MyTab(
      tap: false,
      iconPath: 'lib/icons/pancakes.png',
    ),

    //pizza tab
    MyTab(
      tap: false,
      iconPath: 'lib/icons/pizza.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.grey[800],
            ),
            onPressed: (() {}),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.grey[800],
                ),
                onPressed: (() {}),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            // i wanna eat
            Row(
              children: const [
                Text(
                  'I want to eat ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Donut.',
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            // tab bar
            TabBar(tabs: myTabs),
            // tab bar view
            Expanded(
                child: TabBarView(children: [
              //donut page
              DonutTab(),

              //burger page
              const BurgerTab(),
              //smooithe page
              const SmoothieTab(),
              //pacakes page
              const PancakeTab(),
              //pizza page
              const PizzaTab(),
            ]))
          ]),
        ),
      ),
    );
  }
}
