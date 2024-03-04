import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List listofItems = [1, 2];
  var currentDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text(
            "Task Board",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: listofItems.length,
            itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 2.5),
                  child: Card(
                    elevation: 5,
                    color: Colors.blue[50],
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("Task ${listofItems[index].toString()}",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            Text(
                              "Your Personal task management and planning solution for plannign your day, week & months",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "${currentDateTime}",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        )),
                  ),
                )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              listofItems.add(listofItems.length + 1);
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add),
          ),
        ),
      );
}
