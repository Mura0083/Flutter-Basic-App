import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> assetImages = [
    'assets/images/air.jpg',
    'assets/images/earth.jpg',
    'assets/images/water.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images and Assets'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: Image.network(
                          'https://picsum.photos/200/300?random=${index + 1}',
                          fit: BoxFit.cover,
                        )),
                  );
                }, // itemBuilder
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: ListTile(
                leading: Icon(Icons.light_mode, color: Colors.yellow),
                title: Text(
                  'Roboto Light Font',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: ListTile(
                leading: Icon(Icons.text_fields, color: Colors.green),
                title: Text(
                  'Roboto Regular Font',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: ListTile(
                leading: Icon(Icons.brightness_medium, color: Colors.purple),
                title: Text(
                  'Roboto Medium Font',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: ListTile(
                leading: Icon(Icons.format_bold, color: Colors.red),
                title: Text(
                  'Roboto Bold Font',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: ListTile(
                leading: Icon(Icons.format_italic, color: Colors.blue),
                title: Text(
                  'Roboto Italic Font',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            ListTile(
              leading:
                  Icon(Icons.signal_wifi_statusbar_null, color: Colors.orange),
              title: Text(
                'Default Font',
                style: TextStyle(fontFamily: null),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: assetImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 1,
                      child: Image.asset(
                        assetImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }, // itemBuilder
              ),
            )
          ],
        ),
      ),
    );
  }
}
