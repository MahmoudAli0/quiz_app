import 'package:flutter/material.dart';

class Result extends StatelessWidget {

   final Function ()RestartApp ;

  const Result( this.RestartApp);


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          'Done ',
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
        ),
        FlatButton
          (onPressed: RestartApp,
            child: Text(
                'Restart the App ' ,style: TextStyle(color: Colors.blue ,fontSize: 30.0),
            )
        )
      ],
    ));
  }
}
