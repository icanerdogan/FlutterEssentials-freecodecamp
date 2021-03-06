import 'package:flutter/material.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //var myText = "Change My Name";
  //TextEditingController _nameController = TextEditingController();

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Awesome App"),
          actions: [
            IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.exit_to_app))
          ],
        ),
        body: data != null
            ? ListView.builder(
                //  GridView.builder gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text("ID: ${data[index]["id"]}"),
                    leading: Image.network(data[index]["url"]),
                  );
                },
                itemCount: data.length,
              )
            : Center(child: CircularProgressIndicator()),
        drawer: MyDrawer(),
    floatingActionButton: FloatingActionButton(
    onPressed: () {
    //myText = _nameController.text;
    //setState(() {});
    },
    child: Icon(Icons.send),
    )
    ,
    //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
