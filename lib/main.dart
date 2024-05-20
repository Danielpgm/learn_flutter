import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Card Sample"),),
        body: CardExample(),
      ),
    );
  }
}

class CardExample extends StatelessWidget{
  const CardExample({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Card(
        color: Colors.amber,
        child: Column(
         mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text("The Enchanted Nightingale"),
              subtitle: Text("Music by Julie Gable. Lyrics by Sidney Stein."),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){/*...*/}, child: Text("BUY TICKETS")),
                const SizedBox(width: 5),
                TextButton(onPressed: (){debugPrint('ini debug');}, child: Text("LISTEN")),
                const SizedBox(width: 5)
              ]
            ),
          ],
        )
      ),
    );
  }
}

class Learn extends StatelessWidget{
  @override
  Widget build (BuildContext){
    return Scaffold(

    );
  }
}


