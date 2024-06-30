import 'package:flutter/material.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/widgets/custom_button.dart';
import 'package:tictactoe/widgets/custom_text.dart';
import 'package:tictactoe/widgets/custom_textfield.dart';

class CreateRoomScreen extends StatefulWidget {

  static String routeName = '/create-room';
  const CreateRoomScreen({Key? key}) : super(key: key); 
  
  @override
  _CreateRoomScreenState createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
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
              ], text: 'Create Room', textSize: 70),
              SizedBox(height: size.height * 0.07),
              CustomTextField(controller: _nameController, hintText: 'Enter you nickname',),
              SizedBox(height: size.height * 0.05),
              CustomButton(onTap: () {}, text: 'Create')
            ], 
          ),
        ),
      ),
    );
  }
}