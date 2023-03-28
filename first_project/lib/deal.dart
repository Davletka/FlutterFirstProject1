import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// class DealPage extends StatelessWidget {
//   const DealPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: dealList.map(
//         (e) {
//           return Card(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: ListTile(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               tileColor: Colors.blueGrey[100],
//               leading: Text(
//                 e.id.toString(),
//               ),
//               title: Text(e.title!),
//               subtitle: Text(e.discription!),
//               trailing: const Icon(
//                 Icons.arrow_right,
//                 color: Colors.black,
//               ),
//               onTap: () {},
//             ),
//           );
//         },
//       ).toList(),
//     );
//   }
// }

class Deal {
  int? id;
  String? title;
  String? discription;
  Deal({this.id, this.title, this.discription});
}

List<Deal> dealList = [
  Deal(id: 1, title: 'Flutter', discription: 'Установить Flutter upgrade'),
  Deal(id: 2, title: 'Турнир', discription: 'Пикнуть паджика'),
  Deal(id: 2, title: 'Магазин', discription: 'Купить молоко'),
  Deal(id: 2, title: 'Дота', discription: 'Поиграть в доту')
];
