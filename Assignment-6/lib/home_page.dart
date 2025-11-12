import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 200,
              // margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              // color: Colors.amber,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Text("Hello World"),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                color: Colors.blueGrey,
                elevation: 20,
                // margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Hello"),
                ),
              ),
            ),

            Image.asset('assets/images/flutter.png', height: 100),
            // Image.asset(
            //   'assets/images/images.jpeg',
            //   height: 200,
            //   fit: BoxFit.fill,
            // ),

            // Image.network(
            //   "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&q=60&w=500",
            // ),
          ],
        ),
      ),
    );
  }
}