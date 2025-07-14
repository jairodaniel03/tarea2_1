import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
//import "package:tarea2_1/views/home_page.dart";

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Espacio superior
              Center(
                child:Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    )
                ),
            ),

            SizedBox(height: 20), 

          // TextFiel del nombre de usuario
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Nombre de usuario',
                border: OutlineInputBorder(),
                prefix: Icon(Icons.person),
              ),
            ),

           //TexFiel del numero de telefono
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Número de teléfono',
                border: OutlineInputBorder(),
              ),
            ),  

            //TexFiel del Correo Institucional
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Correo Institucional',
                border: OutlineInputBorder(),
              ),
            ), 

            //TexFiel de contraseña
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
            ),
            // Botón de inicio de sesión
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón
                   context.push('/home');
                  
                },
                child: Text('Iniciar Sesión'),
              ),
            ),
            ],
            )
        ) 
      )
    );
  }
}