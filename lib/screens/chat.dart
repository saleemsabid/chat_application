import 'package:chat_application/widgets/chat_messages.dart';
import 'package:chat_application/widgets/new_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void signout() async {
      await FirebaseAuth.instance.signOut();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Now'),
        actions: [
          IconButton(
            onPressed: signout,
            icon: const Icon(Icons.logout_outlined),
            color: Theme.of(context).colorScheme.primary,
          )
        ],
      ),
      body: const Column(
          children: [Expanded(child: ChatMessages()), NewMessage()]),
    );
  }
}
