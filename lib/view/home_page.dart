import 'package:avatar_provider/Controller/provider_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

 class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final colors = Provider.of<AvatarColorProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.purple[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundColor: colors.avatarcolor),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.tealAccent[400],
              ),
              onPressed: () {
                colors.tealAccent();
              },
              child: const Text('click'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  colors.teal();
                },
                style: ElevatedButton.styleFrom(backgroundColor:Colors.amber),
                child: const Text('Click'))
          ],
        ),
      ),
    );
  }
}
