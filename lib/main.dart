import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextStyle myTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Sales'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(''),
                            Text(
                              'Today',
                              style: myTextStyle,
                            ),
                            Text(
                              'Previous',
                              style: myTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(''),
                            Text(
                              '3/2/2024',
                              style: myTextStyle,
                            ),
                            Text(
                              '25/2/2024',
                              style: myTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Lang',
                              style: myTextStyle,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Orders',
                                  style: myTextStyle,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Sales',
                                  style: myTextStyle,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Orders',
                                  style: myTextStyle,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Sales',
                                  style: myTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: ListView.builder(
                    itemCount: 15,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(35),
                                  child: Image.network(
                                    "https://2.img-dpreview.com/files/p/E~C1000x0S4000x4000T1200x1200~articles/3925134721/0266554465.jpeg",
                                    height: 40,
                                    width: 40,
                                    errorBuilder: (_,__,___) =>  const Icon(
                                      Icons.error,
                                      color: Colors.red,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                              const Text('IN'),
                            ],
                          ),
                          Row(
                            children: [
                              const Text('25k'),
                              const SizedBox(
                                width: 55,
                              ),
                              Text('$index'),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: const [
                              Text('25k'),
                              SizedBox(
                                width: 55,
                              ),
                              Text('100M'),
                              SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.blueAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('Monthly Target', style:  TextStyle(fontSize: 14, color: Colors.white),),
                                  SizedBox(width: 15,),
                                  Text('654B', style:  TextStyle(fontSize: 14, color: Colors.white),),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.blueAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Monthly Target', style:  TextStyle(fontSize: 14, color: Colors.white),),
                                  const SizedBox(width: 15,),
                                  Text('654B', style: TextStyle(fontSize: 14, color: Colors.white),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
