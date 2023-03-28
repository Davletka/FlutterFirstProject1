import 'package:flutter/material.dart';
import 'package:first_project/deal.dart';

class FakeDealPages extends StatelessWidget {
  const FakeDealPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: dealList.map(
                    (deal) {
                      return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: SizedBox(
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              tileColor: Colors.red,
                              leading: Text(
                                deal.id.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "IMFellGreatPrimerSC-Regular",
                                    fontSize: 16),
                              ),
                              title: Text(
                                deal.title!,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "IMFellGreatPrimerSC-Regular",
                                    fontSize: 20),
                              ),
                              trailing: const Icon(
                                Icons.arrow_right,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              onTap: () {},
                            ),
                            height: 10,
                            width: 210,
                          ));
                    },
                  ).toList(),
                )),
            SizedBox(
                height: 599,
                child: ListView(
                  children: dealList.map(
                    (deal) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          tileColor: Colors.red,
                          leading: Text(
                            deal.id.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "IMFellGreatPrimerSC-Regular",
                                fontSize: 16),
                          ),
                          title: Text(
                            deal.title!,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "IMFellGreatPrimerSC-Regular",
                                fontSize: 20),
                          ),
                          subtitle: Text(
                            deal.discription!,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "IMFellGreatPrimerSC-Regular",
                                fontSize: 16),
                          ),
                          trailing: const Icon(
                            Icons.arrow_right,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          onTap: () {},
                        ),
                      );
                    },
                  ).toList(),
                )),
          ],
        ));
  }
}

class Cards {
  int? id;
  String? title;
  Icon? icon;
  Cards({this.id, this.title, this.icon});
}

List<Cards> listCards = [
  Cards(id: 0, title: "Добавить", icon: Icon(Icons.add)),
  Cards(id: 1, title: "Удалить", icon: Icon(Icons.delete)),
  Cards(id: 2, title: "Телефон", icon: Icon(Icons.phone)),
  Cards(id: 3, title: "Лицо", icon: Icon(Icons.face)),
  Cards(id: 4, title: "Добавить", icon: Icon(Icons.list)),
];
