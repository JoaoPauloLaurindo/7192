import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var text = "";
  var busy = false;
  var invertColor = false;
  Function function;

  LoadingButton({
    @required this.text,
    @required this.function,
    @required this.invertColor,
    @required this.busy,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            width: double.infinity,
            margin: EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
              color: invertColor
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(50),
            ),
            child: FlatButton(
              onPressed: function,
              child: Text(
                text,
                style: TextStyle(
                  color: invertColor
                      ? Colors.white.withOpacity(0.8)
                      : Theme.of(context).primaryColor,
                  fontSize: 30,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
            ),
          );
  }
}
