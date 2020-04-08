import 'package:flutter/material.dart';

import 'loading-button.widget.dart';

class Success extends StatelessWidget {
  var text = "";
  Function function;

  Success({
    @required this.function,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 50),
          Text(
            text,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontFamily: "Big Shoulders Display",
              fontSize: 40,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          LoadingButton(
            text: "CALCULAR NOVAMENTE",
            function: function,
            invertColor: true,
            busy: false,
          ),
        ],
      ),
    );
  }
}
