import 'package:flutter/material.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/widgets/custom_button.dart';
import 'package:tictactoe/widgets/custom_text.dart';
import 'package:tictactoe/widgets/custom_textfield.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  _JoinRoomScreenState createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIDController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _gameIDController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 

    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ 
              const CustomText(shadows: [
                Shadow(blurRadius: 10, color: Colors.blue),
              ], text: 'Join Room', textSize: 70),

              SizedBox(height: size.height * 0.07),
              CustomTextField(controller: _nameController, hintText: 'Enter you nickname',),
              
              const SizedBox(height: 20),
              CustomTextField(controller: _gameIDController, hintText: 'Enter Game ID',),


              SizedBox(height: size.height * 0.05),

              CustomButton(onTap: () {}, text: 'Create')
            ], 
          ),
        ),
      ),
    );
  }
}