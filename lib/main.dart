import 'package:flutter/material.dart';
import 'package:test_ads/api/api.dart';
import 'package:test_ads/screen/video_player.dart';
import 'package:test_ads/screen/webview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test ADS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Test ADS'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  //  var url = await Api.getUrl(); разкоммитеть для проверки
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VideoScreen(
                              //  url: url.url, разкоммитеть для проверки
                              )));
                },
                child: const Text('Открыть экран с видио дорожки')),
            ElevatedButton(
                onPressed: () async {
                  // var url = await Api.getUrl();разкоммитеть для проверки
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WebViewScreen(
                              //  url: url.url,разкоммитеть для проверки
                              )));
                },
                child: const Text('Открыть экран с webview'))
          ],
        ),
      ),
    );
  }
}
