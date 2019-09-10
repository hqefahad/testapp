import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController user = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset('images/bg.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                ),
                Container(
                  child: Image.asset(
                    'images/a.JPG',
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: TextField(
                    controller: user,
                    decoration: InputDecoration(
                        icon: Icon(Icons.account_circle),
                        labelText: 'email@example.com',
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.enhanced_encryption),
                        labelText: 'Password',
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20))),
                    obscureText: true,
                  ),
                ),
                RaisedButton(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    Toast.show(user.text, context,
                        textColor: Colors.lightBlueAccent,
                        gravity: Toast.BOTTOM);
                  },
                  color: Colors.lightBlue,
                ),
                Text(
                  ' ',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
