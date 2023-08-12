import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  // dart 프로그램의 진입점
  runApp(const App());
  // = runApp(new App()), dart는 new를 안써도 됨.
  // runApp(Widget)
  // ㄴ flutter widget category에서 많은 위젯을 볼 수 있음. 결국 다 custom하긴 해야될듯?
  // ㄴ 여러개의 위젯이 합쳐져서 큰 위젯을 만듬
}

class App extends StatelessWidget {
  const App({super.key});

  // flutter SDK의 3개의 core Widget중 하나를 상속 받아야 함
  // StatelessWidget
  // build method
  // ㄴ 모든 Widget은 갖고있음
  // ㄴ flutter가 실행할 때 뭘 return할지 정의, build메소드는 Widget의 UI를 만든다.

  // 부모 class의 메소드 상속
  @override
  Widget build(BuildContext context) {
    // widget를 return한다.
    // BuildContext ...? TODO

    // 테마를 선택한다. (기본재료)
    // App의 build함수로, 앱의 기본 테마를 선택해준다. 테마 디자인은 반드시 선택해야되며, 점차 디자인을 제거할 수 있음
    // ㄴ materialApp 구글 디자인 시스템
    // ㄴ cupertinoApp 애플 디자인 시스템
    return MaterialApp(
      // home: Text("Hello world!"),
      // scaffold가 필요함(레이아웃을 잡아주기 위함)
      // named parameter를 사용한 생성자함수를 호출한다.
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 382',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Trensfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin,
                  isInverted: true,
                  order: 1,
                ),
                const CurrencyCard(
                  name: 'Dollor',
                  code: 'USD',
                  amount: '428',
                  icon: Icons.monetization_on_outlined,
                  isInverted: false,
                  order: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
