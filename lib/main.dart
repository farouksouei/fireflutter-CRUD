import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp( Dashboard());
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body://creae a list of cardView
        ListView(
          children: const [
            Card(
              child: ListTile(
                leading: Icon(Icons.camera),
                title: Text('Historique'),
                subtitle: Text('Visualiser l\'historique'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.rocket),
                title: Text('Robot'),
                subtitle: Text('Paramétrer le robot'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.alarm),
                title: Text('Buzzeur'),
                subtitle: Text('Paramétrer le buzzeur'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.timer),
                title: Text('Timer'),
                subtitle: Text('Paramétrer le timer'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10,10,10,0),
      height: 220,
      width: double.maxFinite,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        elevation: 10,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10,10,10,0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Dashboard',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
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
  }
}
