import 'package:flutter/material.dart';

class StockTransaction extends StatefulWidget {
  final int type;

  const StockTransaction({required this.type, Key? key}) : super(key: key);

  @override
  _StockTransactionState createState() => _StockTransactionState();
}

class _StockTransactionState extends State<StockTransaction> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.brown.shade800,
                      child: const Text('AH'),
                    ),
                    const SizedBox(width: 14.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AAPL',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 3.0),
                          Text(
                            'Apple Inc',
                            style: TextStyle(fontSize: 13.0),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'AAPL',
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 2.0),
                        Container(
                          padding: const EdgeInsets.only(top: 4.0,bottom: 4.0,right: 3.0,left: 12.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: Color(0xff474D55)

                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '-1.93%',
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 2.0),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10.0);
          },
          itemCount: 10),
    );
  }
}
