import 'package:flutter/material.dart';
import 'model/mountainItem.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Mountain> mountainList = List.empty(growable: true);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    mountainList
        .add(Mountain(name: "감악산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "관악산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "도봉산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "마니산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "명지산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "백운산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "북한산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "소요산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "용문산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "운악산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "유명산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "천마산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "축령산", image: "badge_icon/mountain_gray.png"));
    mountainList
        .add(Mountain(name: "화악산", image: "badge_icon/mountain_gray.png"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MountainBadge'),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "서울/경기지역 100대 명산",
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: mountainList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.65,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Column(
                      children: [
                        Image.asset(
                          mountainList.elementAt(index).image!,
                        ),
                        Container(
                          height: 25,
                          alignment: Alignment.center,
                          child: Text(
                            mountainList.elementAt(index).name!,
                            style: const TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
