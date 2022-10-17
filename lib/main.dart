import 'package:flutter/material.dart';

import 'data.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyFirstUi(),
  ));
}

class MyFirstUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop App"),
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: data.map((e) {
            return Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Text(
                        e['id'].toString(),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                    Expanded(
                      child: Text(
                        e["title"],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.network(
                      e["image"],
                    ),
                    Text(
                      e["category"],
                    ),
                    Text(
                      e["description"],
                    ),
                    Text(
                      "price: " + e["price"].toString() + "\$",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('Rate: '),
                                Text(e["rating"]['rate'].toString()),
                              ],
                            ),
                            Row(
                              children: [
                                Text('count: '),
                                Text(e["rating"]['count'].toString()),
                              ],
                            )
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    )
                  ],
                ),
              ],
            );
          }).toList(),
        ),
      )),
    );
  }
}
