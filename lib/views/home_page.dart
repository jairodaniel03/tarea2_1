import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              Text(" oa"),
              ElevatedButton(
                onPressed: () {
                  context.push('/login');
                },
                child: Text("Volver al Login"),
              ),
            ],
          ),
        ),
    );
  }
}