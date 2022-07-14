import 'package:flutter/material.dart';
import 'package:test_app/second%20page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        scaffoldBackgroundColor: Color(0xffe513b8),


        // scaffoldBackgroundColor: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is my first page"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/image.png',
                  height: 200,
                  width: 200,
                ),
                TextField (
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:  BorderSide(color: Colors.white)
                      ),
                      labelText: 'Enter your email',
                      // hintText: 'Email :',
                      hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white)
                  ),
                ),
                SizedBox(height: 16,),
                TextField (
                  decoration: InputDecoration(
                     // focusedBorder: InputBorder(borderSide: BorderSide()),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      labelText: 'Enter your password',
                      // hintText: 'Password :',
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white)
                  ),
                ),
                SizedBox(height: 28,),
                Container(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: StadiumBorder()),

                    child: Text('Submit',style: TextStyle(color: Colors.blue),),
                    onPressed: () {},
                  ),
                ),
                Text(
                  'Cannot access yor account ?',
                  style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
