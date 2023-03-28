import 'dart:ui';

import 'package:first_project/card.dart';
import 'package:first_project/drawer.dart';
import 'package:first_project/window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/services/hardware_keyboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'calendar.dart';
import 'deal.dart';

int index = 0;
// final list = [const DealPage(), const Calendar()];
bool appbar = false;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

void initFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

TextEditingController searchController = TextEditingController();
bool tittleAppBar = false;

String title = "Список дел";

class _MyWidgetState extends State<HomePage> {
  List<Deal> newDealList = List.from(dealList);
  onItemSearch(String value) {
    setState(() {
      newDealList =
          dealList.where((element) => element.title!.contains(value)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    Widget listSearchWidget(BuildContext context) {
      return StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('DealCollection')
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) return Text("Нет записей");
            return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  String newStr = snapshot.data?.docs[index].get('title');
                  Card card = Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      tileColor: Colors.red,
                      textColor: Colors.white,
                      title: Text(snapshot.data?.docs[index].get('title')),
                      subtitle:
                          Text(snapshot.data?.docs[index].get('subtitle')),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        color: Colors.white,
                        onPressed: () {
                          FirebaseFirestore.instance
                              .collection('DealCollection')
                              .doc(snapshot.data?.docs[index].id)
                              .delete();
                        },
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/addDeal').then((value) {
                          FirebaseFirestore.instance
                              .collection('DealCollection')
                              .doc(snapshot.data?.docs[index].id)
                              .set({
                            'title': activeDeal.title,
                            'subtitle': activeDeal.discription
                          });
                        });
                        activeDeal.discription =
                            snapshot.data?.docs[index].get('subtitle');
                        activeDeal.title =
                            snapshot.data?.docs[index].get('title');

                        isActive = true;
                      },
                    ),
                  );
                  if (tittleAppBar) {
                    if (newStr.contains(searchController.text)) {
                      return card;
                    }
                  } else {
                    return card;
                  }
                });
          });
    }

    final list = [
      listSearchWidget(context), // 0
      const Calendar(), // 1
      const FakeDealPages(),
      const WindowPage(),
    ];

    AppBar appBarSearch = AppBar(
      centerTitle: true,
      title: TextField(
        decoration: const InputDecoration(
          label: Text("Название"),
        ),
        controller: searchController,
        onChanged: onItemSearch,
      ),
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                searchController.clear();
                tittleAppBar = false;
                newDealList = dealList;
              });
            },
            icon: const Icon(Icons.close))
      ],
    );
    AppBar appBar = AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                tittleAppBar = true;
              });
            },
            icon: const Icon(Icons.search))
      ],
    );

    AppBar deafultAppBar = AppBar(
      title: Text(title),
      centerTitle: true,
    );

    return Scaffold(
        appBar:
            index == 0 ? (tittleAppBar ? appBarSearch : appBar) : deafultAppBar,
        body: list.elementAt(index),
        floatingActionButton: index == 0
            ? FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/addDeal');
                  activeDeal = new Deal(title: "", discription: "");
                  isActive = false;
                },
                child: const Icon(Icons.add),
              )
            : null,
        drawer: const MenuDrawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: BottomNavigationBar(
                backgroundColor: Colors.red,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.white,
                currentIndex: index,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.list),
                    label: "Список дел",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_today),
                    label: "Календарь",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.card_giftcard),
                    label: "Карточки",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.indeterminate_check_box_outlined),
                    label: "Иконки",
                  ),
                ],
                onTap: (value) {
                  setState(() {
                    index = value;
                    if (index == 0) {
                      title = 'Список дел';
                    } else if (index == 2) {
                      title = "Карточки";
                    } else if (index == 3) {
                      title = "Иконки";
                    } else {
                      title = 'Календарь';
                    }
                  });
                },
              ),
            )));
  }
}

Deal activeDeal = Deal();

bool isActive = false;
