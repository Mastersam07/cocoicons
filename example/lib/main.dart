import 'package:cocoicons/cocoicons.dart';
import 'package:example/icon_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cocoicons Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Cocoicons Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<IconModel> sampleIcons = [
    IconModel(icon: CocoIconLine.Add, name: "Line Add icon"),
    IconModel(icon: CocoIconBold.Add, name: "Bold Add icon"),
    IconModel(icon: CocoIconLine.Notification, name: "Line Notification icon"),
    IconModel(icon: CocoIconBold.Notification, name: "Bold Notification icon"),
    IconModel(
        icon: CocoIconLine.Notification_2, name: "Line Notification icon"),
    IconModel(
        icon: CocoIconBold.Notification_2, name: "Bold Notification icon"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(sampleIcons[index].icon, size: 50.0),
                const SizedBox(height: 30.0),
                Text(sampleIcons[index].name, textAlign: TextAlign.center),
              ],
            ),
          );
        },
        itemCount: sampleIcons.length,
      ),
    );
  }
}
