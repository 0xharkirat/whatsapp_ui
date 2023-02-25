import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,)),

        ],
        title: Text(
          info[0]['name'].toString(),
        ),
      ),
      body: Column(
        children: <Widget> [
          const Expanded(child: ChatList()),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(Icons.emoji_emotions, color: Colors.grey,),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget> [
                    Icon(Icons.camera_alt, color: Colors.grey,),
                    Icon(Icons.attach_file, color: Colors.grey,),
                    Icon(Icons.money, color: Colors.grey,)
                  ],
                ),
              ),
              hintStyle: const TextStyle(
                fontSize: 14.0,
              ),
              hintText: 'Search or start a new chat',
              contentPadding: EdgeInsets.all(10.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),

              ),
            ),


          )

        ],
      ),
    );
  }
}
