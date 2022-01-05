import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  static const routeName = "/dashboard";
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Borrower Home"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children:  [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Principle Amount", style: Theme.of(context).textTheme.subtitle1),
                            Text("\$29,761.83", style: Theme.of(context).textTheme.subtitle1)
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Loan Amount"),
                            Text("\$30,000.00")
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(child: Text("Rate of Interest")),
                            Text("10%")
                          ],
                        ),
                        const SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
