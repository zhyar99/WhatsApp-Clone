import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget{
  final List items;
  
  const ChatPage({super.key, required this.items});
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.people),
        title: Text(items[index]),
        subtitle: Text('Subtitle ${index +1}'),
        trailing: const Icon(Icons.more_horiz),
        onLongPress: () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Item Number # $index has long pressed'),
            duration: const Duration(seconds: 2),
          ),
        )
      ),
    );
  }

}