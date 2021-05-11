import 'package:flutter/material.dart';

class AmountSelector extends StatelessWidget {
  final int amount;
  final void Function(int amount) amountChange;

  const AmountSelector({
    Key? key,
    required this.amount,
    required this.amountChange,
  }) : super(key: key);

  void decreaseAmount() {
    var value = amount - 1;
    if (value >= 0) {
      amountChange(value);
    }
  }

  void increaseAmount() {
    amountChange(amount + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          ButtonTheme(
            padding: EdgeInsets.all(0),
            minWidth: 30,
            height: 30,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(50.0),
            ),
            child: RaisedButton(
              color: Colors.white,
              onPressed: decreaseAmount,
              child: Text(
                '-',
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Text(
                amount.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ButtonTheme(
            padding: EdgeInsets.all(0),
            minWidth: 30,
            height: 30,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(50.0),
            ),
            child: RaisedButton(
              color: Colors.white,
              onPressed: increaseAmount,
              child: Text(
                '+',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
