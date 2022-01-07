import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appBarColor = const Color(0xFF01579B);
    return MaterialApp(
        title: 'Quote Generator App',
        theme: ThemeData(
          primaryColor: Color(0xFF01579B),
          scaffoldBackgroundColor: Colors.white,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Quote Generator App"),
            backgroundColor: appBarColor,
          ),
          body: SafeArea(child: HomePage(context)),
        ),
        debugShowCheckedModeBanner: false);
  }
}

class HomePage extends StatefulWidget {
  HomePage(this.authorIndex, {Key? key}) : super(key: key);
  final authorIndex;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var rnd = new Random();

  var einstein = <String>[
    'Logic will get you from A to Z; imagination will get you everywhere.',
    'Life is like riding a bicycle. To keep your balance, you must keep moving.',
    "Anyone who has never made a mistake has never tried anything new.",
    'Try not to become a man of success. Rather become a man of value.',
    'The important thing is not to stop questioning. Curiousity has its own reason for existence. ',
  ];
  var musk = <String>[
    'Failure is a good option. If you are not failing, you are not trying hard enough.',
    'If you get up in the morning and think the future is going to be better, it is a bright day. Otherwise, its not.',
    "Pay attention to negative feedback, and solicit it, particularly from friends.",
    'Persistence is very important. You should not give up unless you are forced to give up.',
    'The first step is to establish that something is possible; then probability will occur',
  ];

  var jobs = <String>[
    'Dont let the noise of others opinions drown out your own inner voice.',
    'Innovation distinguishes between a leader and a follower.',
    'Your time is limited, so dont waste it living someone else life.',
    'Be a yardstick of quality. Some people arent used to an environment where excellence is expected.',
    'Stay hungry. Stay foolish.',
  ];
  var winfrey = <String>[
    'Cheers to a new year and another chance for us to get it right.',
    'The biggest adventure you can take is to live the life of your dreams.',
    'The more your praise and celebrate life, the more there is in life to celebrate.',
    'Every stumble is not a fall, and every fall does not mean failure.',
    'Follow your instincts. Thats where true wisdom manifests itself.',
  ];
  var kennedy = <String>[
    'Let us never negotiate out of fear. But let us never fear to negotiate.',
    'Leadership and learning are indispensable to each other.',
    'Those who are to fail miserably can achieve greatly.',
    'It is an unfortunate fact that we can secure peace only by preparing for war.',
    'The goal of education is teh advancement of knowledge and the dissemination of truth.',
  ];
  String text = 'Generate Quote';
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF01579B),
        title: const Text(
          'Quote of the Day',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'avenir',
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text("Albert Einstein",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'avenir',
                  )),
              children: [
                Align(
                  child: ElevatedButton(
                    child: const Text('Get Quote'),
                    onPressed: () {
                      setState(() {
                        int quoteIndex = rnd.nextInt(einstein.length);
                        text = einstein[quoteIndex];
                        text = '"$text" \n- Albert Einstein';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF01579B),
                    ),
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: const Text("Elon Musk",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'avenir',
                  )),
              children: [
                Align(
                  child: ElevatedButton(
                    child: Text('Get Quote'),
                    onPressed: () {
                      setState(() {
                        int quoteIndex = rnd.nextInt(musk.length);
                        text = musk[quoteIndex];
                        text = '"$text" \n- Elon Musk';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF01579B),
                    ),
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: const Text("Steve Jobs",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'avenir',
                  )),
              children: [
                Align(
                  child: ElevatedButton(
                    child: const Text('Get Quote'),
                    onPressed: () {
                      setState(() {
                        int quoteIndex = rnd.nextInt(jobs.length);

                        text = jobs[quoteIndex];
                        text = '"$text" \n- Steve Jobs';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF01579B),
                    ),
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: const Text("Oprah Winfrey",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'avenir',
                  )),
              children: [
                Align(
                  child: ElevatedButton(
                    child: const Text('Get Quote'),
                    onPressed: () {
                      setState(() {
                        int quoteIndex = rnd.nextInt(winfrey.length);
                        text = winfrey[quoteIndex];
                        text = '"$text" \n- Oprah Winfrey';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF01579B),
                    ),
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: const Text("John F. Kennedy",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'avenir',
                  )),
              children: [
                Align(
                  child: ElevatedButton(
                    child: Text('Get Quote!'),
                    onPressed: () {
                      setState(() {
                        int quoteIndex = rnd.nextInt(kennedy.length);
                        text = kennedy[quoteIndex];
                        text = '"$text" \n- John F. Kennedy';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black, onPrimary: Colors.white),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                  top: screenHeight / 55,
                  left: screenWidth / 5,
                  right: screenWidth / 5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xffdedede),
              ),
              child: Text(' $text',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'avenir',
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
