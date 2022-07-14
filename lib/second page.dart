import 'package:flutter/material.dart';

class SecondpPage extends StatefulWidget {
  const SecondpPage({Key? key}) : super(key: key);

  @override
  State<SecondpPage> createState() => _SecondpPageState();
}

class _SecondpPageState extends State<SecondpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("This is my second page"),),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/image.png',height: 200 , width: 200,),
            Container( margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border:Border.all(color:Colors.white,width: 5,)),
              child: TextField(
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Your Email :',
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color:Colors.white)
                ),
              ),
            ),
            Container( margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border:Border.all(color:Colors.white,width: 5,)),
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password :',
                    hintText: 'Enter Your Password :',
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color:Colors.white)
                ),
              ),
            ),

            TextButton(onPressed:(){


            }, child: Text('Sign in'),
                style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white),)),

            InkWell(
                onTap: () {
                  print("Hello Tap event");
                },
                child: Text('Cannot access yor account ?',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),))



          ],
        ),
      ),

    );
  }
}
