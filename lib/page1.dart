import 'package:flutter/material.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('Page 1 : Gambar dan Text'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: new Image.asset(
                '../assets/foto.png',
                width: 350,
                height: 350,
              ),
              color: Color.fromARGB(255, 242, 0, 238),
              padding: EdgeInsets.all(10),
              height: 400,
              width: 400,
            ),
            Text("\nAnanda Putra",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    backgroundColor: Color.fromARGB(255, 33, 134, 216))),
            Text("2009116060"),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Balek Ke Login Page'),
                ),
                Spacer(
                  flex: 1,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2()),
                    );
                  },
                  child: const Text('Ke Page2'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
