import 'package:flutter/material.dart';


import 'package:flutter_switch/flutter_switch.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _enable = false;


  void toFeedPage(BuildContext context) {
    Navigator.of(context).pushNamed('/feedPage');
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child:
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("Kofi J.", style: Theme.of(context).textTheme.labelSmall,),
                ),
          ),
          PopupMenuButton(
            position: PopupMenuPosition.under,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            itemBuilder: (context) {
              var list = <PopupMenuEntry<Object>>[];
              list.add(
                  PopupMenuItem(
                    textStyle: Theme.of(context).textTheme.titleSmall,
                    value: 1,
                    child: const Text("logout"),
                ),
              );
              return list;
            },
            icon: const Icon(Icons.account_circle_outlined),
            onSelected: (val) {

            },
          )
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.17,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Solar Cleaning App", style: Theme.of(context).textTheme.titleLarge,),
                const SizedBox(
                  height: 20,
                  )
                ],
              ),
            ),

          FlutterSwitch(
            height: 85,
              width: 200,
              toggleSize: 85,
              value: _enable,
              borderRadius: 45,
              showOnOff: true,
              valueFontSize: 40,
              padding: 8,
              onToggle: (val) {
              setState(() {
                _enable = val;
              });
              },
          ),
            
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black)
                  ),
                  child: Column(
                  children: [
                    const Icon(Icons.share, color: Colors.black,),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Share",
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black)
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.solar_power, color: Colors.black,),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Solar Power", style: Theme.of(context).textTheme.titleSmall,)
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () => toFeedPage(context),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black)
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.rss_feed, color: Colors.black,),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Feeds", style: Theme.of(context).textTheme.titleSmall,)
                    ],
                  ),

                ),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}