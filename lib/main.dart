// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps, unnecessary_import, body_might_complete_normally_nullable, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings
// main.dart

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_3/music_detail.dart';
import 'package:flutter_3/subject.dart';
import 'package:flutter_3/subject_detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'music.dart';
import 'content.dart';
import 'question.dart';

void main() {
  runApp(const MaterialApp(home: WenwenPage()));
}

class WenwenPage extends StatelessWidget {
  const WenwenPage({super.key});

  final List<String> subjects = const [
    "Linear algebra",
    "Discrete mathematics",
    "Operating System",
    "Data structure",
    "Algorithms",
    "Computer Architecture & Organization",
  ];

  final List<String> bookPrices = const [
    "260",
    "237",
    "197",
    "355",
    "244",
    "316",
    "316",
    "316"
  ];

  final List<String> bookPrice = const [
    "330",
    "320",
    "250",
    "450",
    "310",
    "400",
    "400",
    "400"
  ];

  final List<String> bookTitles = const [
    '原子習慣：細微改變帶來巨大成就的實證法則',
    '被討厭的勇氣:自我啟發之父阿德勒的教導',
    '有錢人想的和你不一樣',
    '讓天賦自由',
    '情緒勒索:那些在伴侶親子 職場間，最讓人窒息的相處',
    '餘生是你 晚點沒關係',
    '蛤蟆先生去看心理師',
    '底層邏輯:看清這個世界的底牌',
  ];

  final List<Question> questions = const [
    Question(
        subject: Subject(
            quetions: "線性代數", statement: "證明:對於任意矩陣A和B, 存在A+B=B+A", answer: '''
假設A的第i行第j列元素為aij, 
B的第i行第j列元素為bij.
那麼(A+B)ij即為矩陣A+B的第i行第j列元素
由矩陣加法定義可知 (A+B)ij = aij + bij
同理(B+A)ij即為矩陣B+A的第i行第j列元素
由矩陣加法定義可知 (B+A)ij = bij + aij

比較兩式可知(A+B)ij = (B+A)ij
由於i & j的值是任意的, 所以對於矩陣的任意元素
都有(A+B)ij = (B+A)ij, 即A+B = B+A''')),
    Question(
        subject: Subject(
            quetions: "離散數學",
            statement:
                '''一個班級有 20 位學生,其中12位學生學習數學,15位學生學習歷史,8位學生同時學習數學和歷史.該班級有多少位學生既學習數學又學習歷史？''',
            answer: '''
令M為學習數學的學生人數,H為學習歷史的學生人數,
則既學習數學又學習歷史的學生人數可以表示為M ∩ H
根據排容原理, |M ∪ H| = |M| + |H| - |M ∩ H|
∵|M|=12, |H|=15, |M ∩ H|=8
∴|M ∪ H| = 12 + 15 - 6 = 19
因此, 有19位學生既學數學又學歷史
''')),
    Question(
        subject: Subject(
            quetions: "作業系統",
            statement: "虛擬記憶體(Virtual Memory)是做什麼用的? ",
            answer: '''
虛擬記憶體是將電腦的實體記憶體(RAM)和硬碟空間結合,
形成一個較大的記憶體空間。當實體記憶體不足時,
作業系統會將部分資料存到硬碟的虛擬記憶體區域,
讓應用程式可以使用更多記憶體。''')),
    Question(
        subject: Subject(
            quetions: "資料結構",
            statement: "甚麼是堆疊(Stack)和甚麼是佇列(Queue)? ",
            answer: '''
堆疊是一種後進先出(LIFO)的線性資料結構,
最新加入的元素將先被取出。
佇列則是一種先進先出(FIFO)的線性資料結構,
最先加入的元素將先被取出。''')),
    Question(
        subject: Subject(
            quetions: "演算法",
            statement: "如何實現二分搜尋(Binary Search)演算法? ",
            answer: '''
二分搜尋是在已排序的數列中尋找目標值的演算法
它會不斷地把數列一分為二,判斷目標值是在哪一半區間,
然後繼續subdivide並檢查,
直到找到目標值或確定數列中沒有目標值為止''')),
    Question(
        subject: Subject(
            quetions: "計結與計組", statement: "請解釋匯流排(Bus)是甚麼和其作用為何?", answer: '''
匯流排是電腦系統中不同元件間傳輸資料的通路
它是一組導線, 用來連接處理器、記憶體和輸入/輸出裝置等元件
不同的匯流排有不同的傳輸速率和位元寬度。''')),
  ];

  final List<Music> musics = const [
    Music(
      content: Content(name: '不小心', author: '冰球樂團', lyrics: '''
不是沒想過 淋著雨一直這樣走
也不是沒想過 一個人繼續闖禍
不是沒想過 故事有提起的時候
我說服自己我沒有愛過
可措手不及總是一陣風

不要問 別提起 尤其在夜裡
你的眼睛眨不停 讓我徹夜噴嚏
Oh tell me 這不過只是換季

我不小心 想起 你來過這裡
我不小心 忘記 噢這樣不行
愛不小心 換季 免不了會打噴嚏
但我還留著你的信 小心 放在了抽屜
在不小心 和你 搞砸的夜裡
滿天星星 好近
Why can't we just fall in deep?
天靈靈 地靈靈 我想你

其實早該忘了 但偶爾還寫信
如果只是匆匆一筆
路過而已 怎麼還會傷心
（是我不小心）
噢拜託不要問 別提起 尤其在夜裡
（一杯熱水的問題）
你的眼睛眨不停 讓我徹夜噴嚏
（徹夜噴嚏）
Oh tell me 這不過只是換季
（這不過只是換季）

我不小心 想起 你來過這裡
我不小心 忘記 噢這樣不行
愛不小心 換季 免不了會打噴嚏
但我還留著你的信 小心 放在了抽屜
在不小心 和你 搞砸的夜裡
滿天星星 好近
Why can't we just fall in deep?
夭靈靈 地靈靈 我想你

但我還留著你的信 小心 放在了抽屜
在不小心 和你 搞砸的夜裡
滿天星星 好近
Why can't we just fall in deep?
天靈靈 地靈靈 我想你
'''),
    ),
    Music(
      content: Content(name: '我們到底算甚麼', author: '徐暐翔', lyrics: '''
多久了 我以為 那就這樣了
愛不⽤ 想太多 不會有揮霍

遇⾒你 的天空 快樂是真的
為了愛 ⽽寂寞 比寂寞更寂寞

能不能就這樣擁抱著
你卻説 天氣不錯

愛都愛了 還説什麼 適不適合
我們牽⼿ 放開了⼿ 那⼜如何
説什麼 愛也不能夠 天長地久
眼看城市 到處散落 燦爛煙火
我們到底算什麼 你説

關於你 的追求 不是沒聽過
多精彩 多曲折 我為你唱⾸歌

能不能就這樣擁抱著

你卻説 想要走走

愛都愛了 還説什麼 適不適合
我們牽⼿ 放開了⼿ 那⼜如何
説什麼 愛也不能夠 天長地久
眼看城市 到處散落 燦爛煙火
我們到底算什麼 你説
你別説

可惜現在沒⼈相信愛了

愛都愛了 還説什麼 適不適合
我們牽⼿ 放開了⼿ 那⼜如何
説什麼 愛也不能夠 天長地久
眼看城市 到處散落 燦爛煙火
我們到底算什麼

我和你 的拉扯 應該怎麼説
像戀⼈的朋友
只能愛不能説'''),
    ),
    Music(
      content: Content(name: '留給你的我從未', author: '甜約翰', lyrics: '''
每過一天
叮嚀自己再勇敢一點
面對生活再堅決一些
努力走過漫漫長夜
才能讓你看見

其實我
也不是真的不了解
茫茫人海中的妥協
雨後也未必有晴天
但我腦海的畫面

你的眼神比想像中還要和煦深邃
(在你的面前)
提醒我會不會看起來開心得太狼狽
hoo hoo 沈澱了 整片藍天
hoo hoo woo daladada

留給你的心跳我從未
讓它冷卻任何一些
留給你的笑容我從未
讓它黯淡任何一些
daladada

你的眼神比想像中還要和煦深邃
(在你的面前)
提醒我會不會看起來開心得太狼狽
hoo hoo 沈澱了 整片藍天
hoo hoo woo 

你的眼神比想像中還要和煦深邃
(在你的面前)
提醒我會不會看起來開心得太狼狽
hoo hoo 沈澱了 整片藍天
hoo hoo woo daladada'''),
    ),
    Music(
      content: Content(name: '有些', author: '顏人中', lyrics: '''
房間還是亂糟糟 外套還丟在一角
你搬走之後 我也沒改變多少

藏著關心的打擾 簡訊平靜的語調
你說還好 抱著枕頭也能睡著

Oh 好像是我的錯
再多一個擁抱 我不再放掉

難過夾帶陌生的感覺 有一些
已模糊的鏡頭 拉不回 那從前
明明不是下雨天 卻淋濕雙眼
與你有關的淚點

又閃回到昨天的錯覺 有一些
你佔據我世界 卻不在 身邊
我試著把抱歉 再說一遍
你 還是說了再見

房間還是亂糟糟 外套還丟在一角
你搬走之後 我也沒改變多少

藏著關心的打擾 簡訊平靜的語調
你說還好 抱著枕頭也能睡著

Oh 好像是我的錯
再多一個擁抱 我不再放掉

難過夾帶陌生 的感覺 有一些
已模糊的鏡頭 拉不回 那從前
明明不是下雨天 卻淋濕雙眼
與你有關的淚點

又閃回到昨天 的錯覺 有一些
你佔據我世界 卻不在 身邊
我試著把抱歉 再說一遍
你 還是說了再見

和你的照片還留著
笑中帶淚是我輸了
剩下棄權的選擇

難過夾帶陌生 的感覺 有一些
已模糊的鏡頭 拉不回 那從前
明明不是下雨天 卻淋濕雙眼
與你有關的淚點

又閃回到昨天 的錯覺 有一些
你佔據我世界 卻不在 身邊
我試著把抱歉 再說一遍
你 還是說了再見'''),
    ),
    Music(
      content: Content(name: '擱淺的人', author: '康士坦的變化球', lyrics: '''
麻痹的人生 習慣我討厭的生活
麻痹的人生 習慣你自己很爛啊
麻痹的人生 習慣痛苦的關係
但是你又習慣和那個人在一起
麻痹的人生 習慣每個月都把錢花光
麻痹的人生 習慣你自己很賤吶
麻痹的人生 習慣我身體的脂肪
我甚至習慣我討厭自己的樣子
他們所有的彷彿美好一切
我的不過就是那些
無力去面對 不需要再改變
這全都是因為
我感覺不到痛
擱淺的人 早習慣啦
就這樣吧 算了啊
懦弱的人 別改變啦
就這樣吧 算了啊
我重複的說
變成了期待的畫面
我重複的說
自己都相信了 一切
沒關係了我其實習慣討厭的生活
沒關係了我其實習慣自己很爛
沒關係了我其實習慣痛苦的關係
沒關係了我習慣和那個人在一起
沒關係了我習慣每個月把錢花光
沒關係了我其實習慣自己很窮
沒關係我習慣逃避問題的方式
我甚至習慣我討厭自己的樣子
擱淺的人 早習慣啦
就這樣吧 算了啊
懦弱的人 別改變啦
就這樣吧 算了啊
擱淺的人 早習慣啦
就這樣吧 算了啊
懦弱的人 別改變啦
就這樣吧 就這樣啊
擱淺的人 早習慣啦
就這樣吧 算了啊
懦弱的人 別改變啦
就這樣吧 算了啊'''),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "WenTunes",
            style: GoogleFonts.caveat(fontSize: 30, color: Colors.black),
          ),
          leading: IconButton(
            icon: const Icon(Icons.menu, size: 28, color: Colors.black),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, size: 30),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz, size: 30),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.music_note)),
              Tab(icon: Icon(Icons.book)),
              Tab(icon: Icon(Icons.smart_button)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Divider(
                  height: 1,
                  color: Colors.black,
                  thickness: 0.1,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: musics.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return MusicDetail(
                                    content: musics[index].content);
                              },
                            ),
                          );
                        },
                        child: Container(
                          color: Colors.white,
                          height: 180,
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 8, top: 8, right: 20, bottom: 8),
                                child: Image.asset(
                                  'assets/wen${index + 1}.jpg',
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        musics[index].content.name,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        'by ${musics[index].content.author}',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Divider(
                  height: 1,
                  color: Colors.black,
                  thickness: 0.1,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return Container(
                          color: Colors.white,
                          height: 40,
                          margin:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 7),
                          child: Row(
                            children: [
                              Text(
                                ' 藝術設計 > 書籍',
                                style: GoogleFonts.notoSansTc(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                icon: Icon(Icons.filter_list,
                                    color: Color.fromARGB(255, 100, 172, 232)),
                                iconSize: 27,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        );
                      } else if (index == 1) {
                        return GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 9 / 11,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: List.generate(8, (index) {
                            return Container(
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 16.0),
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/wen${index + 6}.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.2),
                                    child: Text(
                                      bookTitles[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13.0,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(height: 7.0),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '中文書',
                                            style: TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.red,
                                            ),
                                          ),
                                          SizedBox(height: 7.0),
                                          Row(
                                            children: [
                                              Text(
                                                '79折',
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              SizedBox(width: 15),
                                              Text(
                                                "\$",
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Wrap(
                                                spacing: 30,
                                                children: [
                                                  Text(
                                                    bookPrices[index],
                                                    style: TextStyle(
                                                      fontSize: 15.0,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 15),
                                              Wrap(
                                                spacing: 30,
                                                children: [
                                                  Text(
                                                    "\$" + bookPrice[index],
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.grey,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        );
                      }
                      return SizedBox.shrink();
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Divider(
                  height: 1,
                  color: Colors.black,
                  thickness: 0.1,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return Container(
                          color: Colors.white,
                          height: 40,
                          margin:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 7),
                          child: Row(
                            children: [
                              Text(
                                " WenTune's Card ",
                                style: GoogleFonts.caveat(
                                    fontSize: 24, color: Colors.black),
                              ),
                              Spacer(),
                              IconButton(
                                icon: Icon(Icons.filter_list,
                                    color: Color.fromARGB(255, 100, 172, 232)),
                                iconSize: 27,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        );
                      } else if (index == 1 ||
                          index == 2 ||
                          index == 3 ||
                          index == 4 ||
                          index == 5 ||
                          index == 6) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Subject_detail(
                                      subject: questions[index - 1].subject);
                                },
                              ),
                            );
                          },
                          child: Card(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              height: 100,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 7),
                              child: Center(
                                child: Text(
                                  subjects[index - 1],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return SizedBox();
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
