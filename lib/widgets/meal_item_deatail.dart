import 'package:flutter/material.dart';
import 'package:testFlutter/models/dummy_data.dart';

class MealItemDetail extends StatelessWidget {
  final String id;
  final String title;

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
            border: Border.all(color: Colors.grey)),
        child: child);
  }

  const MealItemDetail({this.id, this.title});
  @override
  Widget build(BuildContext context) {
    final selectedMeal = DUMMY_MEALS.firstWhere((element) => element.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                )),
            buildSectionTitle(context, "Ingredients"),
            buildContainer(ListView.builder(
                itemBuilder: (ctx, index) => Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 2),
                        child: Text(selectedMeal.ingredients[index]),
                      ),
                    ),
                itemCount: selectedMeal.ingredients.length)),
            Divider(),
            buildSectionTitle(context, "Preperation"),
            buildContainer(ListView.builder(
                itemBuilder: (ctx, index) => ListTile(
                      leading: CircleAvatar(
                        child: Text("# ${index + 1}"),
                      ),
                      title: Text('${selectedMeal.steps[index]}'),
                    ),
                itemCount: selectedMeal.ingredients.length)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pop(id);
      },
      child: Icon(Icons.delete),),
    );
  }
}
