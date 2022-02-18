import 'package:flutter/material.dart';
import '../models/transaction.dart';

import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: transactions.isEmpty
            ? LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [
                      Container(
                        height: constraints.maxHeight * 0.1,
                        child: Text(
                          'No transactions added yet!',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.05,
                      ),
                      Container(
                          height: constraints.maxHeight * 0.85,
                          child: Image.asset(
                            'assets/images/waiting.png',
                            fit: BoxFit.cover,
                          )),
                    ],
                  );
                },
              )
            : ListView.builder(
                itemBuilder: (ctx, index) {
                  return Card(
                    margin: EdgeInsets.all(5),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        radius: 30,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                          child: FittedBox(
                            child: Text('\$${transactions[index].amount}'),
                          ),
                        ),
                      ),
                      title: Text(
                        transactions[index].title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Text(
                          DateFormat.yMMMd().format(transactions[index].date)),
                      trailing: MediaQuery.of(context).size.width > 460
                          ? FlatButton.icon(
                              textColor: Theme.of(context).errorColor,
                              onPressed: () => deleteTx(transactions[index]),
                              icon: Icon(Icons.delete),
                              label: Text('Delete'))
                          : IconButton(
                              icon: Icon(Icons.delete),
                              color: Theme.of(context).errorColor,
                              onPressed: () => deleteTx(transactions[index].id),
                            ),
                    ),
                  );
                  // return Card(
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         margin: EdgeInsets.symmetric(
                  //           vertical: 10,
                  //           horizontal: 15,
                  //         ),
                  //         padding: EdgeInsets.all(10),
                  //         decoration: BoxDecoration(
                  //             border: Border.all(
                  //           color: Theme.of(context).primaryColor,
                  //           width: 2,
                  //         )),
                  //         child: Text(
                  //           '\$${transactions[index].amount.toStringAsFixed(2)}',
                  //           style: TextStyle(
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 20,
                  //               color: Theme.of(context).primaryColor),
                  //         ),
                  //       ),
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Text(
                  //             transactions[index].title,
                  //             style: Theme.of(context).textTheme.headline6,
                  //           ),
                  //           Text(
                  //             DateFormat.yMMMd()
                  //                 .format(transactions[index].date),
                  //             style:
                  //                 TextStyle(color: Colors.grey, fontSize: 12),
                  //           )
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // );
                },
                itemCount: transactions.length,
              ));
  }
}
