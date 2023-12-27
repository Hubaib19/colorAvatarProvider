import 'package:avatar_provider/Controller/provider_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

 class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final colors = Provider.of<AvatarColorProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.teal[300],
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
                colors.greenColor();
              },
              child: const Text('teal'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  colors.whiteColor();
                },
                style: ElevatedButton.styleFrom(backgroundColor:Colors.white),
                child: const Text('white'))
          ],
        ),
      ),
    );
  }
}
