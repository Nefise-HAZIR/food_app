

import 'package:flutter/material.dart';

class MainPageScreen extends StatefulWidget {
  const MainPageScreen({Key? key}) : super(key: key);

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  ColorFilter colorFilter =
      ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: const AssetImage("assets/images/main_bakground.jpeg"),
              colorFilter: colorFilter,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15),
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(153, 64, 63, 63),
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/profile_pic.jpeg"),
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Nefise",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("What are you craving, let's eat")
                ],
              ),
            ),
            const SizedBox(
              width: 60,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 207, 206, 206)),
              child: Badge(
                label: const Text("+9"),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                ),
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.16,left: 20,right: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius:BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.search),
                const SizedBox(width: 10,),
                const Flexible(
                  child: TextField(
                    decoration:InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.blueGrey)
                    ),
                  ),
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.tune))
              ],
            ),
          ),
        )
      ],
    );
  }
}
