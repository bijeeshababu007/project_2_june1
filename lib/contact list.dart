import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Contacts(),
  ));
}

class Contacts  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts List"),
        //backgroundColor: const Color(),
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text("Abijith"),
              subtitle: Text("+91 9750148958"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://static.thenounproject.com/png/3237155-200.png"),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Akhil"),
              subtitle: Text("+91 96050144356"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage:
                NetworkImage("https://static.thenounproject.com/png/3237155-200.png"),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Bibin"),
              subtitle: Text("+91 9051944356"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage:
                NetworkImage("https://static.thenounproject.com/png/3237155-200.png"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Chanchal"),
              subtitle: Text("+91 98431144356"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.phone,
                    //color: Color(0xff65bda0),
                    color: Colors.blue,
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage:
                NetworkImage("https://static.thenounproject.com/png/3237155-200.png"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Darsana"),
              subtitle: Text("+91 9294644356"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage:
                NetworkImage("https://static.thenounproject.com/png/3237155-200.png"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Eya"),
              subtitle: Text("+91 98050167829"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage:
                NetworkImage("https://static.thenounproject.com/png/3237155-200.png"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Fahima"),
              subtitle: Text("+91 9705014456"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage:
                NetworkImage("https://static.thenounproject.com/png/3237155-200.png"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Gayu"),
              subtitle: Text("+91 9050144356"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage:
                NetworkImage("https://static.thenounproject.com/png/3237155-200.png"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Hari"),
              subtitle: Text("+91 9030144356"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage:
                NetworkImage("https://static.thenounproject.com/png/3237155-200.png"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Isa"),
              subtitle: Text("+91 9963144356"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Icon(
                  //   Icons.message,
                  //   color: Color(0xFFFFB084),
                  // ),
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage:
                NetworkImage("https://static.thenounproject.com/png/3237155-200.png"),
              ),
            ),
          ),

        ],
      ),
    );
  }
}