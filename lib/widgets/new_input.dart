import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titlecontrol = TextEditingController();
  final amountecontrol = TextEditingController();

  final Function addtxx;

  NewTransaction(this.addtxx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title: "),
              //onChanged: (val ){
              controller: titlecontrol,
              //  titleinput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount: "),
              controller: amountecontrol,
              keyboardType: TextInputType.number,
              onSubmitted:  ,
              //onChanged: (val ) => Amountinput = val,
            ),
            RaisedButton(
              onPressed: () {
                print(titlecontrol.text);
                print(amountecontrol.text);
                addtxx(titlecontrol.text, double.parse(amountecontrol.text));
              },
              child: Text(
                "add Transaction",
              ),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
