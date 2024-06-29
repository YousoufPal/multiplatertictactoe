import 'package:flutter/material.dart';
import 'package:tictactoe/widgets/custom_text.dart';

class CreateRoomScreen extends StatefulWidget {

  static String routeName = '/create-room';
  const CreateRoomScreen({Key? key}) : super(key: key); 
  
  @override
  _CreateRoomScreenState createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomText(shadows: [
              Shadow(blurRadius: 10, color: Colors.blue),
            ], text: 'Create Room', textSize: 70)
          ],
        ),
      ),
    );
  }
}