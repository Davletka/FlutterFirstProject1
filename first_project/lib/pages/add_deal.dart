import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first_project/home.dart';

class AddPageDeal extends StatefulWidget {
  const AddPageDeal({super.key});

  @override
  State<AddPageDeal> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddPageDeal> {
  TextEditingController titleController = TextEditingController();

  TextEditingController subtitleController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    titleController.dispose();
    subtitleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    titleController.text = activeDeal.title!;
    subtitleController.text = activeDeal.discription!;
    return Scaffold(
      appBar: AppBar(
        title: Text(isActive ? "Редактирование дела" : "Создание дела"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextField(
              cursorColor: Colors.red,
              controller: titleController,
              decoration: InputDecoration(
                label: const Text(
                  "Заголовок",
                ),
                labelStyle: const TextStyle(color: Colors.red),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.red)),
                prefixIcon: const Icon(
                  Icons.title_outlined,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextField(
              cursorColor: Colors.red,
              controller: subtitleController,
              decoration: InputDecoration(
                label: const Text(
                  "Описание",
                ),
                labelStyle: const TextStyle(color: Colors.red),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.red)),
                prefixIcon: const Icon(
                  Icons.subtitles,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.7,
            child: ElevatedButton(
                style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                ),
                onPressed: () async {
                  if (isActive) {
                    // FirebaseFirestore.instance
                    //     .collection('DealCollection')
                    //     .add({
                    //   'title': titleController.text,
                    //   'subtitle': subtitleController.text
                    // });
                    activeDeal.discription = subtitleController.text;
                    activeDeal.title = titleController.text;
                  } else {
                    FirebaseFirestore.instance
                        .collection('DealCollection')
                        .add({
                      'title': titleController.text,
                      'subtitle': subtitleController.text
                    });
                  }

                  titleController.text = "";
                  subtitleController.text = "";

                  Navigator.pushNamed(context, '/home');
                },
                child: isActive ? Text("Сохранить") : Text("Добавить")),
          ),
        ],
      )),
    );
  }
}
