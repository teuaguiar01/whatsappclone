import 'package:app1/app/pages/chats/conversations/components/conversation_form.dart';
import 'package:app1/app/pages/chats/conversations/components/conversation_view.dart';
import 'package:app1/app/pages/chats/conversations/conversation_controller.dart';
import 'package:app1/app/shared/components/contact_picture_widget.dart';
import 'package:flutter/material.dart';

class ConversationWidget extends StatefulWidget {
  final String contato;
  final String imageUrl;

  const ConversationWidget({
    Key key,
    @required this.contato,
    @required this.imageUrl,
  }) : super(key: key);

  @override
  _ConversationWidgetState createState() => _ConversationWidgetState();
}

class _ConversationWidgetState extends State<ConversationWidget> {
  final controller = ConversationController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Image(
            image: AssetImage('assets/conversation_background.png'),
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: LeadingConversationButton(imageUrl: widget.imageUrl),
            title: Row(
              children: <Widget>[
                Text(widget.contato),
                Spacer(),
                Icon(Icons.videocam),
                SizedBox(width: 10),
                Icon(Icons.call),
                SizedBox(width: 10),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          body: Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        child: ConversationView(
                            messagesList: controller.messagesList),
                        onTap: () => _closeKeyboard(context),
                      ),
                    ),
                  ),
                  MyCustomForm(
                    onSubmitMessage: _onSubmitMessage,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  _onSubmitMessage(String message) {
      controller.addMessage(message);
  }

  void _closeKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode());
  }
}

class LeadingConversationButton extends StatelessWidget {
  const LeadingConversationButton({
    Key key,
    @required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        onTap: () {
          Navigator.pop(context);
        },
        child: Row(
          children: <Widget>[
            Icon(Icons.arrow_back),
            ContactPicture(imageUrl: imageUrl, size: 32),
          ],
        ),
      ),
    );
  }
}
