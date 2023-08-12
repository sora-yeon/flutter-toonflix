import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: const Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyLargeTitle(),
          ],
        )),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    // state가 초기화될 때 호출되는 메서드
    // 최초 한번만 호출되며, build보다 먼저 호출된다.
    // 보통은 사용하지 않으나, 부모의 데이터를 state에 초기화 할 때 사용함.
  }

  @override
  void dispose() {
    // 위젯이 사라질 때 호출되는 메서드
    // API 업데이트나, 이벤트 리스너의 구독 취소 등.. 무언가를 취소할 때 사용함.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Lare Title',
      style: TextStyle(
          fontSize: 30, color: Theme.of(context).textTheme.titleLarge!.color),
    );
  }
}
