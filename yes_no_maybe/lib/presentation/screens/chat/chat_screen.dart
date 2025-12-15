import 'package:flutter/material.dart';
import 'package:yes_no_maybe/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_maybe/presentation/widgets/chat/my_message_buble.dart';
import 'package:yes_no_maybe/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://f.rpp-noticias.io/2025/11/03/100610_1808286.jpg?width=860&quality=80',
            ),
          ),
        ),
        title: const Text('Chat Screen '),
      ),

      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              if (index % 2 == 0) {
                return const HerMessageBubble();
              }
              return const MyMessageBubble();
            } 
          )),
          
          MessageFieldBox()
        ],),
      ),
    );
  }
}
