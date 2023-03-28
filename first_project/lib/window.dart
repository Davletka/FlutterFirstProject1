import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WindowPage extends StatefulWidget {
  const WindowPage({super.key});

  @override
  State<WindowPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WindowPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(30),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://play-lh.googleusercontent.com/Pl2nmu5U9CH3NQqLBTjnokoV325zESrX6KIaHrwSqREEJDWIv1yJpRCXzl9r3oMnEWHC"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/236x/ce/60/cf/ce60cf6c3f5d3ab57136565b104f163b.jpg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://play-lh.googleusercontent.com/EiElcSrd6-o-19roiswSx0AZPzsq6qF3hUGHsSWDl5UVtj7G23DHkneM8ucwqyOmEg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://portalvirtualreality.ru/wp-content/uploads/2023/02/%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82-51-1.webp"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://play-lh.googleusercontent.com/LByrur1mTmPeNr0ljI-uAUcct1rzmTve5Esau1SwoAzjBXQUby6uHIfHbF9TAT51mgHm"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://play-lh.googleusercontent.com/rIvZQ_H3hfmexC8vurmLczLtMNBFtxCEdmb2NwkSPz2ZuJJ5nRPD0HbSJ7YTyFGdADQ"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn1.epicgames.com/offer/3ddd6a590da64e3686042d108968a6b2/EGS_GodofWar_SantaMonicaStudio_S2_1200x1600-fbdf3cbc2980749091d52751ffabb7b7_1200x1600-fbdf3cbc2980749091d52751ffabb7b7"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn1.epicgames.com/offer/f696430be718494fac1d6542cfb22542/EGS_MarvelsSpiderManMilesMorales_InsomniacGamesNixxesSoftware_S2_1200x1600-58989e7116de3f70a2ae6ea56ee202c6"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/ru/thumb/d/dd/Spider_Man_PS4_cover.jpg/274px-Spider_Man_PS4_cover.jpg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/ru/thumb/a/a6/Atomic_Heart_cover_.jpeg/640px-Atomic_Heart_cover_.jpeg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i.playground.ru/p/K68xiOs8GqJIvMGvapJ7fg.jpeg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/ru/2/23/Spore_pack.jpg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/ru/0/03/Red_Dead_Redemption_2_coverart.jpg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://playstationplus.ru/wp-content/uploads/2022/11/%D0%90%D0%BF%D0%B3%D1%80%D0%B5%D0%B9%D0%B4-%D0%A3%D0%BB%D1%83%D1%87%D1%88%D0%B5%D0%BD%D0%B8%D0%B5-%D0%9F%D0%BE%D0%B2%D1%8B%D1%88%D0%B5%D0%BD%D0%B8%D0%B5-Call-of-Duty-Modern-Warfare-II.jpg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/ru/8/8e/%D0%9E%D0%B1%D0%BB%D0%BE%D0%B6%D0%BA%D0%B0_Dota_2.jpg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.akamai.steamstatic.com/steam/apps/730/capsule_616x353.jpg?t=1641233427"),
                  fit: BoxFit.cover)),
        ),
      ],
    );
  }
}
