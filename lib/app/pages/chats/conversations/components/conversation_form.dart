import 'dart:math';

import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  final Function(String) onSubmitMessage;

  const MyCustomForm({Key key, @required this.onSubmitMessage})
      : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void submitMessage(String message) {
    if (message.trim().isNotEmpty) {
      widget.onSubmitMessage(message.trim());
    }
    myController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 100,
            child: Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                MessageTextField(
                  myController: myController,
                  submitMessage: submitMessage,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: EmojiButton(),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    AttachButton(),
                    CameraButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 5),
        SubmitMessageButton(submitMessage: (){
          submitMessage(myController.text);
        })
      ],
    );
  }
}

class SubmitMessageButton extends StatelessWidget {
  const SubmitMessageButton({
    Key key,
    @required this.submitMessage,
  }) : super(key: key);

  final Function submitMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff075e54),
      ),
      child: IconButton(
        icon: Icon(Icons.send, color: Colors.white, size: 30),
        onPressed: submitMessage,
      ),
    );
  }
}

class MessageTextField extends StatelessWidget {
  const MessageTextField({
    Key key,
    @required this.myController,
    @required this.submitMessage,
  }) : super(key: key);

  final TextEditingController myController;
  final Function(String) submitMessage;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      onSubmitted: submitMessage,
      style: new TextStyle(fontSize: 19),
      keyboardType: TextInputType.multiline,
      maxLines: null,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: 'Type here your message',
        hintStyle: new TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        contentPadding: EdgeInsets.only(left: 45, right: 85, top: 5),
      ),
    );
  }
}

class EmojiButton extends StatelessWidget {
  const EmojiButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.tag_faces,
        size: 27,
        color: Colors.grey.shade700,
      ),
      onPressed: () {},
    );
  }
}

class CameraButton extends StatelessWidget {
  const CameraButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.camera_alt,
        size: 27,
        color: Colors.grey.shade700,
      ),
      onPressed: () {},
    );
  }
}

class AttachButton extends StatelessWidget {
  const AttachButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Transform.rotate(
        angle: -pi / 4,
        child: Icon(
          Icons.attach_file,
          size: 27,
          color: Colors.grey.shade700,
        ),
      ),
      onPressed: () {},
    );
  }
}
