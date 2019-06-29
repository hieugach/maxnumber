import 'package:flutter/material.dart';
import 'validator/validate.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String maxnumber="";
  TextEditingController _number1 = new TextEditingController();
  TextEditingController _number2 = new TextEditingController();
  TextEditingController _number3 = new TextEditingController();
  TextEditingController _number4 = new TextEditingController();

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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: _number1,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Robotoaa"),
                decoration:
                InputDecoration(
                    labelText: 'number 1',
                    labelStyle: TextStyle(color: Color(0xff888888),fontSize: 15)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: _number2,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Robotoaa"),
                decoration:
                InputDecoration(
                    labelText: 'number 2',
                    labelStyle: TextStyle(color: Color(0xff888888),fontSize: 15)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: _number3,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Robotoaa"),
                decoration:
                InputDecoration(
                    labelText: 'number 3',
                    labelStyle: TextStyle(color: Color(0xff888888),fontSize: 15)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: _number4,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Robotoaa"),
                decoration:
                InputDecoration(
                    labelText: 'number 4',
                    labelStyle: TextStyle(color: Color(0xff888888),fontSize: 15)),
              ),
            ),
            Text(
              '$maxnumber',
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              onPressed: () => onFind(context),
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Text(
                'Find Max Numbber',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: "Roboto",
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void onFind(BuildContext context) {
    setState(() {
      if(Validation.isEmpty(_number1.text.toString()) || Validation.isEmpty(_number2.text.toString())
      || Validation.isEmpty(_number3.text.toString()) || Validation.isEmpty(_number4.text.toString())){
        maxnumber='vui long hoan thanh cac truong';
      }
      else{
        int a = int.tryParse(_number1.text.toString());
        int b = int.tryParse(_number2.text.toString());
        int c = int.tryParse(_number3.text.toString());
        int d = int.tryParse(_number4.text.toString());
        List<int> myList = new List();
        int max;
        myList.add(a);
        myList.add(b);
        myList.add(c);
        myList.add(d);
        max = myList[0];
        for (int i = 0; i < myList.length; i++) {
          if (max < myList[i]) {
            max = myList[i];
          }
        }
        maxnumber = 'so lon nhat la: ' +max.toString();
      }

    });
  }
}
