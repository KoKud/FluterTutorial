import 'package:flutter/material.dart';
import '../models/transaction.dart';

import './transaction_item.dart';

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
          // : ListView.builder(
          //     itemBuilder: (ctx, index) {
          //       return TransactionItem(
          //         key: ValueKey(transactions[index].id),
          //         transaction: transactions[index],
          //         deleteTx: deleteTx,
          //       );
          //     },
          //     itemCount: transactions.length,
          //   )
          : ListView(
              children: transactions
                  .map(
                    (e) => TransactionItem(
                      key: ValueKey(e.id),
                      transaction: e,
                      deleteTx: deleteTx,
                    ),
                  )
                  .toList(),
            ),
    );
  }
}
