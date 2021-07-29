import 'package:flutter/material.dart';

class NewFuck extends StatefulWidget {
  //controller is a built in flutter thing that listens for updates
  final Function addFck;

  NewFuck(this.addFck);

  @override
  _NewFuckState createState() => _NewFuckState();
}

class _NewFuckState extends State<NewFuck> {
  final typeOfFuckController = TextEditingController();

  final titleController = TextEditingController();

  final costController = TextEditingController();

  final returnFucksController = TextEditingController();

  void submitData() {
    final enteredType = typeOfFuckController.text;
    final enteredTitle = titleController.text;
    final enteredCost = int.parse(costController.text);
    final enteredReturn = int.parse(returnFucksController.text);

    if (enteredTitle.isEmpty || enteredType.isEmpty) {
      return;
    }
    widget.addFck(enteredType, enteredTitle, enteredCost, enteredReturn);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            DropdownButtonFormField(
              items: [
                DropdownMenuItem(
                  child: Text('Human Fuck'),
                  value: 'Human Fuck',
                ),
                DropdownMenuItem(
                  child: Text('Stay Alive Fuck'),
                  value: 'Stay Alive Fuck',
                ),
                DropdownMenuItem(
                  child: Text('Dedicated Fuck'),
                  value: 'Dedicated Fuck',
                ),
              ],
              hint: Text('Type of Fuck'),
              icon: Icon(Icons.arrow_drop_down_outlined),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Cost'),
              controller: costController,
              keyboardType: TextInputType.numberWithOptions(decimal: false),
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Return'),
              controller: returnFucksController,
              keyboardType: TextInputType.numberWithOptions(decimal: false),
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              onPressed: submitData,
              child: Text('Add Fuck'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue[50],
                padding: EdgeInsets.all(10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
