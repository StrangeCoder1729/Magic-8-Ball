import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
      MaterialApp(
          home : Scaffold(
            backgroundColor: Colors.lightBlue,
              appBar: AppBar(
                backgroundColor: Colors.blue[800],
                title: Center(child: const Text('Ask Me Anything')),
              ),

              body : const Magic(),
          ),

    ),

  );
}

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {

  int rand = 1;
  @override
  Widget build(BuildContext context) {




    return Column(
      children: <Widget>[
        Expanded(


          child: TextButton(

        onPressed: (){
          print('The button got pressed');
          setState(() {
            int rand_num = 1 + Random().nextInt(5);
            print(rand_num);
            rand = rand_num;
          });
    },
            child: Image.asset(
                'images/ball$rand.png'

            ),
    )

        )
      ],
    );
  }
}

// class Magic extends StatelessWidget {
//   const Magic({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//          Expanded(
//            child: Image.asset(
//                'images/ball1.png'
//
//            ),
//         )
//       ],
//     );
//   }
// }
