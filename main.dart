import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""), backgroundColor: Colors.green),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // constraints provide us with maxWidth,maxHeight etc, using
          // which we can show different widgets accordingly

          if (constraints.maxWidth > 600) {
            // as the width is greater than 600px, we'll show wide screen container
            // with two containers in a row

            return _buildWideScreenContainers();
          } else {
            return _buildPortraitContainer();
          }
        },
      ),
    );
  }

  Widget _buildPortraitContainer() {
// here we're returning a single container since the phone
// doesn't has the required width (600px)
    return ListView(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(32.0),
          child: Icon(
            Icons.account_circle,
            size: 100.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Demo Data",
            style: TextStyle(fontSize: 22.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Demo Data",
            style: TextStyle(fontSize: 22.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Demo Data",
            style: TextStyle(fontSize: 22.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Demo Data",
            style: TextStyle(fontSize: 22.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Demo Data",
            style: TextStyle(fontSize: 22.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Demo Data",
            style: TextStyle(fontSize: 22.0),
          ),
        ),
      ],
    );
  }

  Widget _buildWideScreenContainers() {
// here we're returning double containers since the phone
// has the required width (600px)

    return ListView(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(32.0),
          child: Icon(
            Icons.account_circle,
            size: 100.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Demo Data",
            style: TextStyle(fontSize: 22.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Demo Data",
            style: TextStyle(fontSize: 22.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Demo Data",
            style: TextStyle(fontSize: 22.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Demo Data",
            style: TextStyle(fontSize: 22.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Demo Data",
            style: TextStyle(fontSize: 22.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Demo Data",
            style: TextStyle(fontSize: 22.0),
          ),
        ),
      ],
    );
  }
}
