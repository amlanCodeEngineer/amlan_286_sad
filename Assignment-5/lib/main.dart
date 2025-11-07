import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 81, 136, 163),
          foregroundColor: Colors.tealAccent,
          // leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          title: Text("Flutter App"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
        drawer: NavigationDrawer(
          // backgroundColor: Colors.blueAccent,
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                accountName: Text("Name"),
                accountEmail: Text("Email"),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text("Home Page"),
              leading: Icon(Icons.home),
            ),
            Divider(),
            ListTile(onTap: () {}, title: Text("Contact Page")),
            ListTile(onTap: () {}, title: Text("Profile")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: "Add",
          child: Icon(Icons.add),
        ),
        body: Image.asset('assets/images/flutter.png'),
      ),
    );
  }
}