import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/models.dart';

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key});

  @override
  State<DataBudgetPage> createState() => _DataBudgetPageState();
}

class _DataBudgetPageState extends State<DataBudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: appDrawer(context),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        Budget.budgetList[index].title,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Budget.budgetList[index].nominal.toString(),
                            style: const TextStyle(fontSize: 14),
                          ),
                          Text(
                            Budget.budgetList[index].type,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                    ),
                  ],
                ),
              ),
          );
        },
        itemCount: Budget.budgetList.length,
      ),
    );
  }
}