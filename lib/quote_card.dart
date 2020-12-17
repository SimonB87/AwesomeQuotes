import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  //use "final" to declare a not changing value in state less widget.
  final Quote quote;

  QuoteCard({ this.quote });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                )
            ),
            SizedBox(height: 8.0,),
            FlatButton.icon(
                onPressed: () {},
                label: Text("Delete Quote"),
                icon: Icon(Icons.delete),
                ),
          ],
        ),
      ),
    );
  }
}
